
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
    
        //Phase 3: Create "getSportCar()" method
         
    public static Cars[] getSportCar(){
        ArrayList<Cars> cc = new ArrayList<Cars>();
        try(FileReader fr = new FileReader(MyController.path+"/WEB-inf/sportcar.txt");
            BufferedReader br=new BufferedReader(fr);){
                String line;
                String[] splits;
                Cars c;
                
                while((line = br.readLine())!=null){
                    splits=line.split("[|]");
                    c= new Cars( Integer.parseInt(splits[0]),Double.parseDouble(splits[1]),splits[2]);
                    cc.add(c);
                }
        }catch(Exception e){
            System.out.println(e.toString());
        }
        
            Cars[] cr=new Cars[cc.size()];
            cr = cc.toArray(cr);
            
            return cr;
    
    }
        //Phase 3: Create "eraseAllData()" method
    
    public static void eraseAllData(){
        String out=MyController.path+"/WEB-inf/sportcar.txt";
        //Create new File
        try(FileWriter fw =new FileWriter(out);){
        
        }catch(Exception e){
            System.out.println(e.toString());
        }
    }

}
