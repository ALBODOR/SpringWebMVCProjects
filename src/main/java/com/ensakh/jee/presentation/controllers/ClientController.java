package com.ensakh.jee.presentation.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ensakh.jee.entities.Client;
import com.ensakh.jee.services.ClientServices;

@Controller
@RequestMapping("/client/")
public class ClientController {
	
	@Autowired
	private ClientServices clientServices;

	@RequestMapping(value = "creation", method = RequestMethod.GET)
	public String nouveauClient() {
		return "client/creationClient";
	}

	@RequestMapping(value = "creation", method = RequestMethod.POST)
	public String creerClient(	Model model, String nomClient, String prenomClient, 
								String adresseClient, String telephoneClient) {
		Client c = new Client(nomClient, prenomClient, adresseClient, telephoneClient);
		try {
			clientServices.creerClient(c);
		} catch(Exception ex) {
			model.addAttribute("error", ex.getMessage());
		}
		return "redirect:/client/liste";
	}
	
	@RequestMapping(value = "liste", method = RequestMethod.GET)
	public String listerClient(Model model) {
		try {
			model.addAttribute("clients", clientServices.tousLesClients());
		} catch(Exception ex) {
			model.addAttribute("error", ex.getMessage());
		}		
		return "client/listeClients";
	}

	
}
