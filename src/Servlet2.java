

import com.sdzee.beans.Coyote;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Servlet2 extends HttpServlet{

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        String paramAuteur = request.getParameter( "auteur" );
        String message = "Transmission de variables : OK ! by :"+paramAuteur;

        Coyote premierBean = new Coyote();

        premierBean.setNom( "Coyote" );
        premierBean.setPrenom( "Wile E." );

        request.setAttribute( "test", message );
        request.setAttribute( "test", message );

        this.getServletContext().getRequestDispatcher( "/WEB-INF/test2.jsp" ).forward( request, response );
    }

}