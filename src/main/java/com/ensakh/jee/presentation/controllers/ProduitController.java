package com.ensakh.jee.presentation.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ensakh.jee.services.ProduitServices;

@Controller
@RequestMapping("/produit/")
public class ProduitController {
	
	@Autowired
	private ProduitServices produitServices;

	@RequestMapping(value = "creation", method = RequestMethod.GET)
	public String nouveauProduit() {
		
		return "produit/creationProduit";
	}

	@RequestMapping(value = "creation", method = RequestMethod.POST)
	public String creerProduit(Long idCommande, Date dateFacture, Double montant) {
		
		return "redirect:/produit/liste";
	}
	
	@RequestMapping(value = "liste", method = RequestMethod.GET)
	public String listerProduit(Model model) {
		
		return "roduit/listeProduits";
	}

}
