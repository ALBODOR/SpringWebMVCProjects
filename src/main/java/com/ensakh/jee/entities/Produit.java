package com.ensakh.jee.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
	private List<Commande> commandes;

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

	@Column(nullable = false)
	public String getNomProduit() {
		return nomProduit;
	}

	public void setNomProduit(String nomProduit) {
		this.nomProduit = nomProduit;
	}

	@Column(nullable = false)
	public Integer getQuantite() {
		return quantite;
	}

	public void setQuantite(Integer quantite) {
		this.quantite = quantite;
	}

	@Column(nullable = false)
	public Double getPrix() {
		return prix;
	}

	public void setPrix(Double prix) {
		this.prix = prix;
	}

	@ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(	name = "COMMANDE_PRODUIT", 
    			joinColumns = @JoinColumn(name = "COMMANDE_ID"), 
    			inverseJoinColumns = @JoinColumn(name = "PRODUIT_ID"))
	public List<Commande> getCommandes() {
		return commandes;
	}

	public void setCommandes(List<Commande> commandes) {
		this.commandes = commandes;
	}
   
}
