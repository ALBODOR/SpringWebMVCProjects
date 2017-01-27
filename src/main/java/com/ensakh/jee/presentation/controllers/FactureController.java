package com.ensakh.jee.presentation.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ensakh.jee.services.FactureServices;

@Controller
@RequestMapping("/facture/")
public class FactureController {
	
	@Autowired
	private FactureServices factureServices;

	@RequestMapping(value = "creation", method = RequestMethod.GET)
	public String nouvelleFacture() {
		
		return "facture/creationFacture";
	}

	@RequestMapping(value = "creation", method = RequestMethod.POST)
	public String creerFacture(Long idCommande, Date dateFacture, Double montant) {
		
		return "redirect:/facture/liste";
	}
	
	@RequestMapping(value = "liste", method = RequestMethod.GET)
	public String listerFacture(Model model) {
		
		return "facture/listeFactures";
	}
	
}
