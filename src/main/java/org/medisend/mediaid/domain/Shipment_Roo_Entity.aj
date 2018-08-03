// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.medisend.mediaid.domain;

import java.lang.String;
import java.lang.SuppressWarnings;
import java.util.Calendar;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.medisend.mediaid.domain.Shipment;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Shipment_Roo_Entity {
    
    declare @type: Shipment: @Entity;
    
    @PersistenceContext
    transient EntityManager Shipment.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private String Shipment.id;
    
    @Version
    @Column(name = "lastModifiedDate")
    private Calendar Shipment.lastModifiedDate;
    
    public String Shipment.getId() {
        return this.id;
    }
    
    public void Shipment.setId(String id) {
        this.id = id;
    }
    
    public Calendar Shipment.getLastModifiedDate() {
        return this.lastModifiedDate;
    }
    
    public void Shipment.setLastModifiedDate(Calendar version) {
        this.lastModifiedDate = version;
    }
    
    @Transactional
    public void Shipment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Shipment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Shipment attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Shipment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public Shipment Shipment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Shipment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Shipment.entityManager() {
        EntityManager em = new Shipment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Shipment.countShipments() {
        return ((Number) entityManager().createQuery("select count(o) from Shipment o").getSingleResult()).longValue();
    }
    
    @SuppressWarnings("unchecked")
    public static List<Shipment> Shipment.findAllShipments() {
        return entityManager().createQuery("select o from Shipment o").getResultList();
    }
    
    public static Shipment Shipment.findShipment(String id) {
        if (id == null || 0 == id.length()) return null;
        return entityManager().find(Shipment.class, id);
    }
    
    @SuppressWarnings("unchecked")
    public static List<Shipment> Shipment.findShipmentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Shipment o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}