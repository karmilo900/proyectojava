
package Config;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;


public class Conexion {
    Connection con;
    
    public Conexion()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/tecnologo2023","root","");
        
        
        }catch(Exception e)
        {
         System.err.println("Error"+e);
        }
    }
    public Connection getConnection()
    {
        return con;
    }
}
