
package ModelDao;


import Config.Conexion;
import Interfaz.MeAprendiz;
import Model.Aprendiz;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;




/**
 *
 * @author APRENDIZ
 */
public class AprendizDao implements MeAprendiz{

    Conexion co= new Conexion();
    Connection cn;
    PreparedStatement pc;
    ResultSet rs;
    Aprendiz ape = new Aprendiz();
    Aprendiz usu=new Aprendiz();
    
    @Override
    public Aprendiz list(int ide) {
        String sql="Select * from Aprendiz where id="+ide;
        try{
            cn=co.getConnection();
            pc=cn.prepareStatement(sql);
            rs=pc.executeQuery();
            while(rs.next()){
                usu.setId(rs.getInt("id"));
                usu.setDocuApre(rs.getInt("Docu"));
                usu.setNombre(rs.getString("NombreA"));
                usu.setApellido(rs.getString("ApellidoA"));
                usu.setCorreo(rs.getString("EmailA"));
                usu.setTeleApre(rs.getInt("TelefonoA"));
            }
            
        }catch(Exception e){
            
        }
        return usu;
        
    }

    @Override
    public List listadoA() {
        ArrayList<Aprendiz> lista = new ArrayList<Aprendiz>();
        String sql = "select * from aprendiz";
        try{
            cn=co.getConnection();
            pc=cn.prepareStatement(sql);
            rs=pc.executeQuery();
            while(rs.next()){
                Aprendiz usu=new Aprendiz();
                usu.setId(rs.getInt("id"));
                usu.setDocuApre(rs.getInt("Docu"));
                usu.setNombre(rs.getString("NombreA"));
                usu.setApellido(rs.getString("ApellidoA"));
                usu.setCorreo(rs.getString("EmailA"));
                usu.setTeleApre(rs.getInt("TelefonoA"));
                lista.add(usu);
            }
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se puede consultar");
        }
        return lista;
    }

    @Override
    public boolean registrarAp(Aprendiz ap) {
        
        String sql="insert into Aprendiz(Docu,NombreA,ApellidoA,EmailA,TelefonoA)values('"+ap.getDocuApre()+"','"+ap.getNombre()+"','"+ap.getApellido()+"','"+ap.getCorreo()+"','"+ap.getTeleApre()+"')";
        try{
            cn=co.getConnection();
            pc=cn.prepareStatement(sql);
            pc.executeUpdate();
           /* while(rs.next()){
                ape.setId(rs.getInt("id"));
                ape.setDocuApre(rs.getInt("Docu"));
                ape.setNombre(rs.getString("NombreA"));
                ape.setApellido(rs.getString("ApellidoA"));
                ape.setCorreo(rs.getString("CorreoA"));
                ape.setTeleApre(rs.getInt("TelefonoA"));
            }*/
           JOptionPane.showMessageDialog(null,"Usuario registrado");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"Usuario ya esta registrado");
        }
        return false;
    }
    

    @Override
    public boolean actualizarAp(Aprendiz ap) {
            String sql="update aprendiz set Docu='"+ap.getDocuApre()+"',NombreA='"+ap.getNombre()+"',ApellidoA='"+ap.getApellido()+"',EmailA='"+ap.getCorreo()+"',TelefonoA='"+ap.getTeleApre()+"' where id="+ap.getId();
            
            try{
            cn=co.getConnection();
            pc=cn.prepareStatement(sql);
            pc.executeUpdate();
            }catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean eliminarAp(int id) {
        String sql="delete from aprendiz where id="+id;
        try{
            cn=co.getConnection();
            pc=cn.prepareStatement(sql);
            pc.executeUpdate();
            JOptionPane.showMessageDialog(null,"Usuario eliminado");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"Usuario no pudo ser eliminado");
        }
        return false;
    }
    
}
