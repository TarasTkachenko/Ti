/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tkachenko.IR12.Lab6_7;

public class Lab6_7_1 {
    
    public int CountDigits(int number)
    {
        if(number == 0)
            return 0;
        
        return 1 + CountDigits(number / 10);
    }
}
