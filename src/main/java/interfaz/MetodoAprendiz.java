
package interfaz;

import java.util.List;
import model.Aprendiz;


public interface MetodoAprendiz {
    public Aprendiz list(int id);
    public List listadoA();
    public boolean regitrarap(Aprendiz ap);
    public boolean actualizarap(Aprendiz ap);
    public boolean eliminarap(Aprendiz ap);
}
