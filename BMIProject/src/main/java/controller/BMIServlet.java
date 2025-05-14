package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calculate")
public class BMIServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            double height = Double.parseDouble(request.getParameter("height"));
            double weight = Double.parseDouble(request.getParameter("weight"));
            double bmi = weight / (height * height);
            String classification;

            if (bmi < 18.5) classification = "Gầy";
            else if (bmi < 24.9) classification = "Bình thường";
            else if (bmi < 29.9) classification = "Thừa cân";
            else classification = "Béo phì";

            request.setAttribute("bmi", String.format("%.2f", bmi));
            request.setAttribute("classification", classification);
            request.getRequestDispatcher("bmi.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            response.sendRedirect("index.jsp?error=invalid");
        }
    }
}
