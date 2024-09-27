package com.hassan.EleveFiliere.model;

import jakarta.persistence.*;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Entity
@Component
public class Filiere {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_Filiere")
    private int idFiliere;

    @Column(name = "nom_Filiere")
    private String nomFiliere;

    @OneToMany(mappedBy = "filiere", cascade = CascadeType.ALL)
    private List<Eleve> eleveList = new ArrayList<>();



    public int getIdFiliere() {
        return idFiliere;
    }

    public void setIdFiliere(int idFiliere) {
        this.idFiliere = idFiliere;
    }

    public String getNomFiliere() {
        return nomFiliere;
    }

    public void setNomFiliere(String nomFiliere) {
        this.nomFiliere = nomFiliere;
    }


}
