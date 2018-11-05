/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lenguajesdeprog;

/**
 *
 * @author tomas
 */
public class LenguajesDeProg {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("leer (va)\n"
                + "     #obtenerel valor de (va)\n"
                + "     li      $v0, 5          #carga la llamda de lectura en v0\n"
                + "     syscall                 #hacer la llmada al sistema\n"
                + "     sw      $v0,var_(va)    #stoe in memory\n");
        
        System.out.println("     #Mostrar el valor de (va) en la consola\n" 
                + "     lw      $a0, var_(va)   # load in a0\n" 
                + "     li      $v0, 1          # cargar la llamada de escritura en v0\n"
                + "     syscall                 # hacer la llamada al sistema");
    }
    
}
