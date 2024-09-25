package com.hassan.EleveFiliere.controller;

import com.hassan.EleveFiliere.model.Eleve;
import com.hassan.EleveFiliere.model.Filiere;
import com.hassan.EleveFiliere.service.EleveService;
import com.hassan.EleveFiliere.service.FiliereService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class HomeCotroller {

    private EleveService eleveService;
    private FiliereService filiereService;

    public HomeCotroller(EleveService eleveService, FiliereService filiereService) {
        this.eleveService = eleveService;
        this.filiereService = filiereService;
    }


    @RequestMapping("/")
    public String home(Model model){
        List<Filiere> filiereList = filiereService.findAll();
        model.addAttribute("filiereList",filiereList);
        return "home.jsp";
    }


    @PostMapping("/saveEleve")
    public String addEleve(Eleve eleve){
        eleveService.addEleve(eleve);
        return "redirect:/eleves";
    }




    @GetMapping("/eleves")
    public String allEleves(Model model){
        List<Eleve> eleveList = eleveService.findAll();
        model.addAttribute("eleveList",eleveList);
        return "viewEleves.jsp";
    }



    @GetMapping("/eleve")
    public String findById(int id, Model model){
        model.addAttribute("eleveList", eleveService.findById(id));
        return "viewEleves.jsp";
    }



    @RequestMapping("/deleteEleve")
    public String delete(int id){
        eleveService.delete(id);
        return "redirect:/eleves";
    }



    @RequestMapping("/updateEleve")
    public String update(Eleve eleve){
        eleveService.update(eleve);
        return "redirect:/eleves";
    }



    @RequestMapping("/updating")
    public String test(int id, Model model){
        model.addAttribute("myEleve",eleveService.findById(id).get(0))
                .addAttribute("filiereList", filiereService.findAll());
        return "updateEleve.jsp";
    }




    /////// Filiere methods

    @RequestMapping("/allFilieres")
    public String findAll(Model model){
        List<Filiere> filiereList = filiereService.findAll();
        model.addAttribute("filiereList", filiereList);
        return "home.jsp";
    }



    @RequestMapping("/filiere")
    public String Filiere(){
        return "addFiliere.jsp";
    }



    @PostMapping("/saveFiliere")
    public String addFiliere(Filiere filiere){
        filiereService.addFiliere(filiere);
        return "redirect:/filiere";
    }





}
