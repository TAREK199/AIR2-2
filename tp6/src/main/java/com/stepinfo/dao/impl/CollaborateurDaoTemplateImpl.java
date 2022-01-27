package com.stepinfo.dao.impl;

import org.springframework.orm.jpa.JpaTemplate;

import com.stepinfo.dao.CollaborateurDaoTemplate;
import com.stepinfo.model.Collaborateur;


public class CollaborateurDaoTemplateImpl implements CollaborateurDaoTemplate {
   
   private JpaTemplate jpaTemplate;
   
   public void setJpaTemplate(JpaTemplate jpaTemplate) {
      this.jpaTemplate = jpaTemplate;
   }
   
   public Collaborateur find(long id) {
      return jpaTemplate.find(Collaborateur.class, id);
   }
}
