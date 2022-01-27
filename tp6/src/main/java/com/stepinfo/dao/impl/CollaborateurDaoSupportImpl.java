package com.stepinfo.dao.impl;

import org.springframework.orm.jpa.support.JpaDaoSupport;

import com.stepinfo.dao.CollaborateurDaoSupport;
import com.stepinfo.model.Collaborateur;

public class CollaborateurDaoSupportImpl extends JpaDaoSupport implements CollaborateurDaoSupport {

   public Collaborateur find(long id) {
      return getJpaTemplate().find(Collaborateur.class, id);
   }

}
