/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModelDao;

import Config.Conexion;
import Interfaz.MeFicha;
import Model.Ficha;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;


public class FichaDao implements MeFicha{
    
    Ficha fe =new Ficha();
    Conexion co= new Conexion();
    Connection cn;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public Ficha list(int cod) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listaFichas() {
         ArrayList<Ficha> lista = new ArrayList<Ficha>();
        String sql = "select * from ficha";
        try{
            cn=co.getConnection();
            ps=cn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Ficha fi=new Ficha();
                fi.setCodFicha(rs.getInt("codficha"));
                fi.setCantiAprendices(rs.getInt("cantapre"));
                fi.setCodprograma(rs.getInt("codprod"));
                fi.setCodaprendiz(rs.getInt("codaprendiz"));
                
                
                lista.add(fi);
            }
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se puede consultar");
        }
        return lista;
    }

    @Override
    public boolean registroficha(Ficha fi) {
        String sql="insert into ficha(codficha,cantapre,codprod,codaprendiz)values('"+fi.getCodFicha()+"','"+fi.getCantiAprendices()+"','"+fi.getCodprograma()+"','"+fi.getCodaprendiz()+"')";
        try{
            cn=co.getConnection();
            ps=cn.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Ficha Registrada");
            
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"ficha no registrada"+e.getMessage());
        }
        return false;
    }

    @Override
    public boolean actualizarficha(Ficha fi) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminarficha(int cod) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
