/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaz;

import Model.Ficha;
import Model.Programa;
import java.util.List;

/**
 *
 * @author APRENDIZ
 */
public interface MeFicha {
    
    public Ficha list(int cod);
    public List listaFichas();
    public boolean registroficha(Ficha fi);
    public boolean actualizarficha(Ficha fi);
    public boolean eliminarficha(int cod);
    
}
