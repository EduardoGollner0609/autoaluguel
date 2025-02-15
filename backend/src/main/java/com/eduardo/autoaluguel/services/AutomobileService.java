package com.eduardo.autoaluguel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eduardo.autoaluguel.dtos.AutomobileDTO;
import com.eduardo.autoaluguel.entities.Automobile;
import com.eduardo.autoaluguel.entities.Brand;
import com.eduardo.autoaluguel.entities.Model;
import com.eduardo.autoaluguel.repositories.AutomobileRepository;
import com.eduardo.autoaluguel.repositories.LocationRepository;
import com.eduardo.autoaluguel.repositories.ModelRepository;
import com.eduardo.autoaluguel.services.exceptions.DatabaseException;
import com.eduardo.autoaluguel.services.exceptions.RentalException;
import com.eduardo.autoaluguel.services.exceptions.ResourceNotFoundException;

import jakarta.persistence.EntityNotFoundException;

@Service
public class AutomobileService {

	@Autowired
	private AutomobileRepository repository;

	@Autowired
	private ModelRepository modelRepository;

	@Autowired
	private LocationRepository locationRepository;

	// Create
	@Transactional
	public AutomobileDTO insert(AutomobileDTO automobileDTO) {
		Automobile automobile = new Automobile();
		copyDtoToEntity(automobile, automobileDTO, true);
		return new AutomobileDTO(repository.save(automobile));
	}

	// Read (FindAll)
	@Transactional(readOnly = true)
	public List<AutomobileDTO> findAll() {
		List<Automobile> automobiles = repository.findAllOrderByReturned();
		return automobiles.stream().map(automobile -> new AutomobileDTO(automobile)).toList();
	}

	// Read (FindById)
	@Transactional(readOnly = true)
	public AutomobileDTO findById(Long id) {
		Automobile automobile = repository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Automóvel não encontrado"));
		return new AutomobileDTO(automobile);
	}

	// Update
	@Transactional
	public AutomobileDTO update(Long id, AutomobileDTO automobileDTO) {
		try {
			Automobile automobile = repository.getReferenceById(id);
			copyDtoToEntity(automobile, automobileDTO, false);
			return new AutomobileDTO(repository.save(automobile));
		} catch (EntityNotFoundException e) {
			throw new ResourceNotFoundException("Automóvel não encontrado");
		}
	}

	// Delete
	@Transactional(propagation = Propagation.SUPPORTS)
	public void delete(Long id) {
		if (!repository.existsById(id)) {
			throw new ResourceNotFoundException("Automóvel não encontrado");
		}
		try {
			locationRepository.deleteAllByAutomobileId(id);
			repository.deleteById(id);
		} catch (DataIntegrityViolationException e) {
			throw new DatabaseException("Não é possivel apagar esse veiculo");
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

	private void copyDtoToEntity(Automobile automobile, AutomobileDTO automobileDTO, boolean isInsert) {
		automobile.setImgUrl(automobileDTO.getImgUrl());
		automobile.setPlate(automobileDTO.getPlate());
		automobile.setColor(automobileDTO.getColor());
		automobile.setKm(automobileDTO.getKm());
		automobile.setYear(automobileDTO.getYear());
		automobile.setValuePerDay(automobileDTO.getValuePerDay());
		automobile.setReturned(automobileDTO.getReturned());

		Model model = new Model();

		if (isInsert == true) {
			automobile.setReturned(true);
			Brand brand = new Brand();
			brand.setId(automobileDTO.getModel().getBrand().getId());
			model.setBrand(brand);
			model.setName(automobileDTO.getModel().getName());
			model = modelRepository.save(model);
			automobile.setModel(model);
			return;
		}

		model.setId(automobileDTO.getModel().getId());
		automobile.setModel(model);
	}
}
