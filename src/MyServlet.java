

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class MyServlet extends HttpServlet{

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

        String message = "Transmission de variables : OK !";
        request.setAttribute( "index", message );
        this.getServletContext().getRequestDispatcher( "/web/index.jsp" ).forward( request, response );
    }
}