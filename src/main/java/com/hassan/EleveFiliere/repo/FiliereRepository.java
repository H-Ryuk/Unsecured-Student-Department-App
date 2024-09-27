package com.hassan.EleveFiliere.repo;

import com.hassan.EleveFiliere.model.Filiere;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FiliereRepository extends JpaRepository<Filiere,Integer> {
}
