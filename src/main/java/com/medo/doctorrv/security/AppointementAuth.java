package com.medo.doctorrv.security;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebFilter({"/Appointment","/Appointement.jsp"})
public class AppointementAuth implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        if (httpRequest.getSession().getAttribute("user") != null) {


            if (httpRequest.getSession().getAttribute("role") == "doctor") {
                chain.doFilter(request, response);
            } else if (httpRequest.getSession().getAttribute("role") == "patient") {
                httpResponse.sendRedirect(httpRequest.getContextPath() + "/RendezvousPatient.jsp");

            } else {
                System.out.println(httpRequest.getSession().getAttribute("role"));
                httpResponse.sendRedirect(httpRequest.getContextPath() + "/Home.jsp");
            }

        }
        else {
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/Login.jsp");

        }

    }
}