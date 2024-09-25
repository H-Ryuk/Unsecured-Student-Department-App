package com.hassan.EleveFiliere.repo;

import com.hassan.EleveFiliere.model.Eleve;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface EleveRepository extends JpaRepository<Eleve, Integer> {
}
