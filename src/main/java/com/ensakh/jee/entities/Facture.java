package com.ensakh.jee.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Entity implementation class for Entity: Facture
 *
 */
@Entity
@Table(name="FACTURES")
public class Facture implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private long id;
	private Date dateFacture;
	private Double montant;
	
	public Facture() {
		super();
	}

	public Facture(Date dateFacture, Double montant) {
		super();
		this.dateFacture = dateFacture;
		this.montant = montant;
	}

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

        @Temporal(TemporalType.TIMESTAMP)
	public Date getDateFacture() {
		return dateFacture;
	}

	public void setDateFacture(Date dateFacture) {
		this.dateFacture = dateFacture;
	}

	public Double getMontant() {
		return montant;
	}

	public void setMontant(Double montant) {
		this.montant = montant;
	}
   
}
