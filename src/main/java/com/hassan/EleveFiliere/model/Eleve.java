package com.hassan.EleveFiliere.model;

import jakarta.persistence.*;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Eleve {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int idEleve;

    @Column(name = "name")
    private String nameEleve;

    @Column(name = "address")
    private String addressEleve;

    @ManyToOne()
    @JoinColumn(name = "FK_Filiere")
    private Filiere filiere;



    public int getIdEleve() {
        return idEleve;
    }

    public void setIdEleve(int idEleve) {
        this.idEleve = idEleve;
    }

    public String getNameEleve() {
        return nameEleve;
    }

    public void setNameEleve(String nameEleve) {
        this.nameEleve = nameEleve;
    }

    public String getAddressEleve() {
        return addressEleve;
    }

    public void setAddressEleve(String addressEleve) {
        this.addressEleve = addressEleve;
    }

    public Filiere getFiliere() {
        return filiere;
    }

    public void setFiliere(Filiere filiere) {
        this.filiere = filiere;
    }
}
