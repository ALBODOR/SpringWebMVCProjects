package com.ensakh.jee.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entity implementation class for Entity: Livraison
 *
 */
@Entity
@Table(name="LIVRAISONS")
public class Livraison implements Serializable {

	private static final long serialVersionUID = 1L;

	private long id;
	private Date dateLivraison;
	
	public Livraison() {
		super();
	}

	public Livraison(Date dateLivraison) {
		super();
		this.dateLivraison = dateLivraison;
	}

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getDateLivraison() {
		return dateLivraison;
	}

	public void setDateLivraison(Date dateLivraison) {
		this.dateLivraison = dateLivraison;
	}
   
}
