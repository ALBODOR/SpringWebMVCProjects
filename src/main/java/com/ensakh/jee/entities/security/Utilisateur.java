package com.ensakh.jee.entities.security;

import java.io.Serializable;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Utilisateur
 *
 */
@Entity
@Table(name="UTILISATEURS")

public class Utilisateur implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	private long id;
	private String login;
	private String motDePasse;

	public Utilisateur() {
		super();
	}

	public Utilisateur(String login, String motDePasse) {
		super();
		this.login = login;
		this.motDePasse = motDePasse;
	}

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}
   
}
