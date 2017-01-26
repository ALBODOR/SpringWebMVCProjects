package com.ensakh.jee.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entity implementation class for Entity: Commande
 */

@Entity
@Table(name="PRODUITS")
public class Produit implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private long id;
	private String nomProduit;
	private Integer quantite;
	private Double prix;

	public Produit() {
		super();
	}

	public Produit(String nomProduit, Integer quantite, Double prix) {
		super();
		this.nomProduit = nomProduit;
		this.quantite = quantite;
		this.prix = prix;
	}

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNomProduit() {
		return nomProduit;
	}

	public void setNomProduit(String nomProduit) {
		this.nomProduit = nomProduit;
	}

	public Integer getQuantite() {
		return quantite;
	}

	public void setQuantite(Integer quantite) {
		this.quantite = quantite;
	}

	public Double getPrix() {
		return prix;
	}

	public void setPrix(Double prix) {
		this.prix = prix;
	}
   
}
