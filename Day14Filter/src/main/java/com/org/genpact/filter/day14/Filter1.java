package com.org.genpact.filter.day14;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
@WebFilter("/LogFilter")
public class Filter1 extends HttpFilter implements Filter {


	public void destroy() {
		// TODO Auto-generated method stub
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		PrintWriter out = response.getWriter();
		out.println("Log files of Machine");
		out.println("------------------------------------");
		String ipaddress = request.getRemoteAddr();
		String hostname = request.getRemoteHost();
		String protocol = request.getProtocol();
		
		out.println("IP Address of Client "+ipaddress);
		out.println("Hostname of Client "+hostname);
		out.println("Protocol used by Client "+protocol);
		out.println("Data is Successfully Logged");
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
