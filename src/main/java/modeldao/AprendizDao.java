
package modeldao;

import interfaz.MetodoAprendiz;
import java.util.List;
import model.Aprendiz;


public class AprendizDao implements MetodoAprendiz{

    @Override
    public Aprendiz list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listadoA() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean regitrarap(Aprendiz ap) {
        String sql="insert into Aprendiz (Docu,EmailA,TelefonoA,nombreA,ApellidoA)values('"+ap.getDocuape()+"','"+ap.getCorreoa()+"','"+ap.getTeleape()+"','"+ap.getNombrea()+"','"+ap.getApellidoa()+")";
            try{
                
            }catch(){
                
            }
        return false;
    }

    @Override
    public boolean actualizarap(Aprendiz ap) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminarap(Aprendiz ap) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
