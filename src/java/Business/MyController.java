
package Business;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.security.auth.message.callback.PrivateKeyCallback;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "MyController", urlPatterns = {"/MyController"})
public class MyController extends HttpServlet {
    public static String path;
    
    public void init(){
        path = this.getServletContext().getRealPath("/");
    }
    
    @Override
    protected void doGet(HttpServletRequest request , HttpServletResponse response)
            throws ServletException , IOException {
    
    
       String url = "/index.jsp";
    
       String opr = request.getParameter("opr");
       
       if(opr.equals("add")){
           String color = request.getParameter("color");

           int model = Integer.parseInt(request.getParameter("model"));
           double speed = Double.parseDouble(request.getParameter("speed"));
           
           Cars c = new Cars(model,speed,color);
           
           BussinessSportCar.addSportCar(c);
           request.setAttribute("c", c);
           url="/addSportCarOut.jsp";
       }
           //Phase 3: Code for "list" opr
       else if(opr.equals("list")){
           Cars [] car = BussinessSportCar.getSportCar();
           request.setAttribute("cc",car);
           url="/listOut.jsp";
       }
        //Phase 3: Code for "erase" opr
    
       else if(opr.equals("er")){
           String Color = request.getParameter("color");
           BussinessSportCar.eraseAllData();
           request.setAttribute("color", Color);
           url="/eraseAllDataOut.jsp";
       }
          //Phase 4: Code for "deleteAllMatch" opr
        else if(opr.equals("deleteAllMatch")){
           int model = Integer.parseInt(request.getParameter("model"));
           int count = BussinessSportCar.deleteAllMatching(model);
           
        
           request.setAttribute("model", model);
           request.setAttribute("count", count);
           url="/deleteSportCarOut.jsp";
       }
               
   
    
    request.getServletContext().getRequestDispatcher(url).forward(request, response);
    
        //End of "doGet" method
    
    }
    //Phase 2: do necessary things for "doPost" method
    
    @Override
    protected void doPost(HttpServletRequest request , HttpServletResponse response)
            throws ServletException , IOException {
        doGet(request, response);
    }
    
    //Phase 2: "getServaletInfo" method
    @Override
    public String getServletInfo() {
        return "Short description";
    }//</editor-fold>


} // End of MyC
