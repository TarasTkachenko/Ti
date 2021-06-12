/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tkachenko.IR12.Lab3;

import java.util.Arrays;
import java.util.Random;

public class Lab3 
{
    private int[] array;
    
    public Lab3(int length)
    {
        if(length < 0)
            length = 20;
        array = new int[length];
    }
    
    public int GetArrayLength()
    {
        return array.length;
    }
    
    public void InitArray()
    {
        for (int i = 0; i < array.length; i++)
            array[i] = (int)Math.pow(i + 1, 2);
    }
    
    public String CountSum(int k, int n)
    {
        if(k < 0 || n < 0)
            return "Negative borders!";
        
        String buff = "";
        for (int i = 0; i < array.length; i++)
            buff += Integer.toString(array[i]);
        
        if(n > buff.length() || k > buff.length())
            return "Out of range!";
        
        int first = k;
        int last = n;
        if(n < k){
            last = k;
            first = n;
        }
        int sum = 0;
        for (int i = first - 1; i < last ; i++)
            sum += Integer.parseInt(Character.toString(buff.charAt(i)));
        
        return Integer.toString(sum);
    }
    
    public String DisplayArray()
    {
        return Arrays.toString(array);
    }
}
