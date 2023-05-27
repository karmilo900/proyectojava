/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaz;

import Model.Aprendiz;
import java.util.List;


/**
 *
 * @author APRENDIZ
 */
public interface MeAprendiz {
    public Aprendiz list(int id);
    public List listadoA();
    public boolean registrarAp(Aprendiz ap);
    public boolean actualizarAp(Aprendiz ap);
    public boolean eliminarAp(int id);
}
