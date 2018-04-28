package com.websystique.springmvc.model;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import java.sql.Timestamp;
@Entity
public class Statut {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
	private int idstatut;
	@Column
	private String contenuetxt;
	@Column
	private String contenufile;
	
	@Column(columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP")
	@Temporal(TemporalType.TIMESTAMP)
    private Date datestatut = new Date();
	
	  @ManyToOne(fetch = FetchType.EAGER)
	    @JoinColumn(name = "iduser", nullable = false)
	    private User user;
	 

	public Statut() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Statut(int idstatut, String contenuetxt, String contenufile, Date datestatut) {
		super();
		this.idstatut = idstatut;
		this.contenuetxt = contenuetxt;
		this.contenufile = contenufile;
		this.datestatut = datestatut;
	
	}
	

}
	
