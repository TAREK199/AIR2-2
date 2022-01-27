package com.stepinfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stepinfo.service.DemandeCongeServiceMock;

@Controller
public class DirectionController {

   @Autowired
   private DemandeCongeServiceMock service;
   
   @RequestMapping(value = "/direction")
   public ModelAndView direction() {
      
      service.getDemandeConge(5);

      return new ModelAndView("listerDdc");
   }
}
