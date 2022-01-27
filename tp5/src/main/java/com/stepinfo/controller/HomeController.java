package com.stepinfo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

//   public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException,
//            IOException {
//
//      // response.getWriter().write("Ecriture directe dans HttpServletResponse");
//      // return null;
//      // puis :
//      // return new ModelAndView("/WEB-INF/mes_pages/home.jsp");
//      // puis :
//      return new ModelAndView("home");
//   }

   @RequestMapping( value = "/home", method = RequestMethod.GET)
   public String toHome(){

      return "home";
   }
}
