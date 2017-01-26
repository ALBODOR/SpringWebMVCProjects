package com.ensakh.jee.entities.security;

import java.io.Serializable;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Role
 *
 */
@Entity
@Table(name="ROLES")

public class Role implements Serializable {

	
	private static final long serialVersionUID = 1L;

	private long id;
	private String titre;
	
	public Role() {
		super();
	}

	public Role(String titre) {
		super();
		this.titre = titre;
	}

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}
   
}
