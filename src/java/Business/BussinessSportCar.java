
package Business;
import java.io.*;
import java.util.ArrayList;
public class BussinessSportCar {
    
  
    
    public static void addSportCar(Cars c){
        String out = MyController.path+"/WEB-inf/sportcar.txt";
        try(FileWriter fw = new FileWriter(out,true);
                PrintWriter pw =new PrintWriter(fw);){
            
                    pw.println(c);
                    
        }catch(Exception e){
            System.out.println(e.toString());
        }     
    }

}
