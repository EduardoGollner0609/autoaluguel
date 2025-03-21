package com.eduardo.autoaluguel.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eduardo.autoaluguel.dtos.AutomobileDTO;
import com.eduardo.autoaluguel.dtos.AutomobileInsertDTO;
import com.eduardo.autoaluguel.entities.Automobile;
import com.eduardo.autoaluguel.entities.Brand;
import com.eduardo.autoaluguel.entities.Model;
import com.eduardo.autoaluguel.repositories.AutomobileRepository;
import com.eduardo.autoaluguel.repositories.BrandRepository;
import com.eduardo.autoaluguel.repositories.ModelRepository;
import com.eduardo.autoaluguel.services.exceptions.DatabaseException;
import com.eduardo.autoaluguel.services.exceptions.RentalException;
import com.eduardo.autoaluguel.services.exceptions.ResourceNotFoundException;

@Service
public class AutomobileService {

	@Autowired
	private AutomobileRepository repository;

	@Autowired
	private ModelRepository modelRepository;

	@Autowired
	private BrandRepository brandRepository;

	// Create
	@Transactional
	public AutomobileDTO insert(AutomobileInsertDTO automobileInsertDTO) {
		Automobile automobile = new Automobile();
		copyDtoToEntity(automobile, automobileInsertDTO);
		return new AutomobileDTO(repository.save(automobile));
	}

	// Read (FindAll)
	@Transactional(readOnly = true)
	public Page<AutomobileDTO> findAllPaged(Pageable pageable) {
		Page<Automobile> automobiles = repository.findAllPaged(pageable);
		return automobiles.map(automobile -> new AutomobileDTO(automobile));
	}

	// Read (FindById)
	@Transactional(readOnly = true)
	public AutomobileDTO findById(Long id) {
		Automobile automobile = repository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Automóvel não encontrado"));
		return new AutomobileDTO(automobile);
	}

	@Transactional
	public AutomobileDTO update(Long id, AutomobileInsertDTO automobileInsertDTO) {
		Automobile automobile = repository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Automovel não encontrado"));
		if (automobile.getReturned() == false) {
			throw new RentalException("Não é possível atualizar os dados de um carro ques está alugado.");
		}
		copyDtoToEntity(automobile, automobileInsertDTO);
		return new AutomobileDTO(repository.save(automobile));
	}

	// Delete
	@Transactional(propagation = Propagation.SUPPORTS)
	public void delete(Long id) {
		if (!repository.existsById(id)) {
			throw new ResourceNotFoundException("Automóvel não encontrado");
		}
		try {
			repository.deleteById(id);
		} catch (DataIntegrityViolationException e) {
			throw new DatabaseException(
					"Não é possivel apagar esse veiculo. Por favor remova os registros relacionados a esse carro.");
		}
	}

	@Transactional
	public Automobile updateRentStatus(Long id, boolean returned) {
		Automobile automobile = repository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Automóvel não encontrado"));

		if (returned == false && automobile.getReturned() == false) {
			throw new RentalException("O Automóvel está indisponivel para locação");
		}
		automobile.setReturned(returned);
		return repository.save(automobile);
	}

	private void copyDtoToEntity(Automobile automobile, AutomobileInsertDTO automobileInsertDTO) {
		automobile.setImgUrl(automobileInsertDTO.getImgUrl());
		automobile.setPlate(automobileInsertDTO.getPlate());
		automobile.setColor(automobileInsertDTO.getColor());
		automobile.setKm(automobileInsertDTO.getKm());
		automobile.setYear(automobileInsertDTO.getYear());
		automobile.setValuePerDay(automobileInsertDTO.getValuePerDay());
		automobile.setReturned(true);

		String brandName = automobileInsertDTO.getBrand().getName();

		Brand brand = searchBrand(brandName);

		String modelName = automobileInsertDTO.getModel().getName();

		Model model = searchModel(modelName);
		model.setBrand(brand);

		automobile.setModel(model);

	}

	private Brand searchBrand(String brandName) {

		Optional<Brand> optionalBrand = brandRepository.findByNameIgnoreCase(brandName);

		if (optionalBrand.isEmpty()) {
			Brand newBrand = new Brand();
			newBrand.setName(brandName);
			return brandRepository.save(newBrand);
		} else {
			return optionalBrand.get();
		}

	}

	private Model searchModel(String modelName) {

		Optional<Model> optionalModel = modelRepository.findByNameIgnoreCase(modelName);

		if (optionalModel.isEmpty()) {
			Model newModel = new Model();
			newModel.setName(modelName);
			return modelRepository.save(newModel);
		} else {
			return optionalModel.get();
		}
	}
}
