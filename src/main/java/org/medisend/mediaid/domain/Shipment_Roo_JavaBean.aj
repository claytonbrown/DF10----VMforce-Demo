// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.medisend.mediaid.domain;

import java.lang.Integer;
import java.lang.String;
import java.util.Date;

privileged aspect Shipment_Roo_JavaBean {
    
    public String Shipment.getName() {
        return this.name;
    }
    
    public void Shipment.setName(String name) {
        this.name = name;
    }
    
    public String Shipment.getCountry() {
        return this.country;
    }
    
    public void Shipment.setCountry(String country) {
        this.country = country;
    }
    
    public String Shipment.getType() {
        return this.type;
    }
    
    public void Shipment.setType(String type) {
        this.type = type;
    }
    
    public String Shipment.getStatus() {
        return this.status;
    }
    
    public void Shipment.setStatus(String status) {
        this.status = status;
    }
    
    public Date Shipment.getShipDate() {
        return this.shipDate;
    }
    
    public void Shipment.setShipDate(Date shipDate) {
        this.shipDate = shipDate;
    }
    
    public Integer Shipment.getItems() {
        return this.items;
    }
    
    public void Shipment.setItems(Integer items) {
        this.items = items;
    }
    
    public Integer Shipment.getSelected() {
        return this.selected;
    }
    
    public void Shipment.setSelected(Integer selected) {
        this.selected = selected;
    }
    
    public Integer Shipment.getReserved() {
        return this.reserved;
    }
    
    public void Shipment.setReserved(Integer reserved) {
        this.reserved = reserved;
    }
    
}
