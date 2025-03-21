package com.eduardo.autoaluguel.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eduardo.autoaluguel.entities.Brand;

@Repository
public interface BrandRepository extends JpaRepository<Brand, Long> {

	Optional<Brand> findByNameIgnoreCase(String name);

}
