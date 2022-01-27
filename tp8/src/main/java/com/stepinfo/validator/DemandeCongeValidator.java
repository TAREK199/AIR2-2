package com.stepinfo.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.stepinfo.model.DemandeConge;

public class DemandeCongeValidator implements Validator {

   public boolean supports(Class clazz) {
      return DemandeConge.class.isAssignableFrom(clazz);
   }

   public void validate(Object dc, Errors errors) {
      System.out.println("Validation de " + dc);

      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "collaborateur.prenom", null,
               "Champ obligatoire : veuillez saisir un prénom");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "collaborateur.nom", null,
               "Champ obligatoire : veuillez saisir un nom");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "periode.dateDebut", null,
               "Champ obligatoire : veuillez saisir une date de début");

      DemandeConge demandeConge = (DemandeConge) dc;
      if (demandeConge.getPeriode().getNbJours() < 0) {
         errors.reject("periode.nbJours", "Le nombre de jours ne peut pas être négatif");
      }

   }
}
