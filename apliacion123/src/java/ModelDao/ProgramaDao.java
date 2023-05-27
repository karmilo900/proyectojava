/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModelDao;

import Config.Conexion;
import Interfaz.MePrograma;
import Model.Programa;
import java.sql.*; 
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author APRENDIZ
 */
public class ProgramaDao implements MePrograma {
    Conexion cn=new Conexion();
    Programa po =new Programa();
    Connection con;
    ResultSet rs;
    PreparedStatement ps;

    @Override
    public Programa list(int codprograma) {
        String sql="Select * from programa where codprograma="+codprograma;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                po.setCodprograma(rs.getInt("codprograma"));
                po.setNombreprograma(rs.getString("nombrepro"));
                
            }
            
        }catch(Exception e){
            
        }
        return po;
    }

    @Override
    public List listadopro() {
            ArrayList<Programa> lista = new ArrayList<Programa>();
        String sql = "select * from programa";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Programa pro=new Programa();
                pro.setCodprograma(rs.getInt("codprograma"));
                pro.setNombreprograma(rs.getString("nombrepro"));
                lista.add(pro);
            }
        }catch(Exception e){
            
        }
        return lista;
    }

    @Override
    public boolean Registrarpro(Programa pro) {
                String sql="insert into programa(codprograma,nombrepro)values('"+pro.getCodprograma()+"','"+pro.getNombreprograma()+"')";
                 try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"programa registrado");
        }catch(SQLException ex){
            JOptionPane.showMessageDialog(null, "error al abrir conexion");
        }
        
        return false;
    }

    @Override
    public boolean actualizarpro(Programa pro) {
        String sql="update programa set codprograma='"+pro.getCodprograma()+"',nombrepro='"+pro.getNombreprograma()+"'where codprograma="+pro.getCodprograma();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
                        JOptionPane.showMessageDialog(null, "actualizado");

        }catch(SQLException e){
            JOptionPane.showMessageDialog(null,"programa no actualizado");
        }
        
        return false;
    }

    @Override
    public boolean eliminarpro(int codprograma) {
        String sql="delete from programa where codprograma="+codprograma;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
    }
    
}
