package com.stepinfo.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.stepinfo.dao.CollaborateurDao;
import com.stepinfo.model.Collaborateur;

public class CollaborateurDaoImpl implements CollaborateurDao
{
    @PersistenceContext(unitName = "example-db")
    private EntityManager entityManager;

    public Collaborateur find(long id)
    {
        return entityManager.find(Collaborateur.class, id);
    }

    public EntityManager getEntityManager()
    {
        return entityManager;
    }

    public void setEntityManager(EntityManager entityManager)
    {
        this.entityManager = entityManager;
    }
}
