package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/calculate")
public class BMIInputFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        try {
            double height = Double.parseDouble(request.getParameter("height"));
            double weight = Double.parseDouble(request.getParameter("weight"));
            if (height > 0 && weight > 0) {
                chain.doFilter(request, response);
            } else {
                response.getWriter().println("<h2>Dữ liệu không hợp lệ: Chiều cao và cân nặng phải là số dương!</h2>");
            }
        } catch (NumberFormatException e) {
            response.getWriter().println("<h2>Dữ liệu không hợp lệ: Vui lòng nhập số hợp lệ!</h2>");
        }
    }
}