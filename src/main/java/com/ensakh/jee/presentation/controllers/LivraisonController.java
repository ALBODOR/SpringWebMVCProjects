package com.ensakh.jee.presentation.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ensakh.jee.services.LivraisonServices;

@Controller
@RequestMapping("/livraison/")
public class LivraisonController {

	@Autowired
	private LivraisonServices livraisonServices;

	@RequestMapping(value = "creation", method = RequestMethod.GET)
	public String nouvelleLivraison() {
		
		return "livraison/creationLivraison";
	}

	@RequestMapping(value = "creation", method = RequestMethod.POST)
	public String creerLivraison(Long idCommande, Date dateFacture, Double montant) {
		
		return "redirect:/livraison/liste";
	}
	
	@RequestMapping(value = "liste", method = RequestMethod.GET)
	public String listerLivraison(Model model) {
		
		return "livraison/listeLivraisons";
	}

}
