package com.medo.doctorrv.security;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter("/RendezvousPatient.jsp")
public class RendezvousPatientAuth implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        if (httpRequest.getSession().getAttribute("user") != null) {

            if (httpRequest.getSession().getAttribute("role") == "doctor") {
                httpResponse.sendRedirect(httpRequest.getContextPath() + "/RendezvousPatient.jsp");
            } else if (httpRequest.getSession().getAttribute("role") == "patient") {
                chain.doFilter(request, response);
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
