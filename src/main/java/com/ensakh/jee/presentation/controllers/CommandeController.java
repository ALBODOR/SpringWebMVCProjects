package com.ensakh.jee.presentation.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ensakh.jee.services.CommandeServices;

@Controller
@RequestMapping("/commande")
public class CommandeController {
	
	@Autowired
	private CommandeServices commandeServices;

	@RequestMapping(value = "creation", method = RequestMethod.GET)
	public String nouveauClient() {
		return "commande/creationCommande";
	}

	@RequestMapping(value = "creation", method = RequestMethod.POST)
	public String creerCommande(Long idClient, Date dateCommande) {
		return "redirect:/commande/liste";
	}
	
	@RequestMapping(value = "liste", method = RequestMethod.GET)
	public String listerCommande(Model model) {
		
		return "commande/listeCommandes";
	}
	
}
