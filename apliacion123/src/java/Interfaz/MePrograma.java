/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaz;

import Model.Programa;
import java.util.List;

public interface MePrograma {
    public Programa list(int codprograma);
    public List listadopro();
    public boolean Registrarpro(Programa pro);
    public boolean actualizarpro(Programa pro);
    public boolean eliminarpro(int codprograma);
    
    
}
