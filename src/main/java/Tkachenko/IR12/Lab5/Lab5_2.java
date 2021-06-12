/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tkachenko.IR12.Lab5;

import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class Lab5_2 {
    private int modelsNumber;
    public LinkedList<Model> list;
    
    public Lab5_2(int modelsNumber)
    {
        this.modelsNumber = modelsNumber;
        list = new LinkedList<Model>();
    }
    
    public void InitList()
    {
        Random rd = new Random();
        list.clear();
        for (int i = 0; i < modelsNumber; i++)
            list.add(new Model("model #" + i, rd.nextInt()));
    }
    
    public String DisplayList()
    {
        String s = "";
        Iterator<Model> itr = list.iterator();
        for (int i = 0; itr.hasNext(); i++) {
            s += i + ". " + itr.next() + "<br/>";
        }
        return s;
    }
    
    public int IndexOf(Model find)
    {
        int result = -1;
        for (int i = 0; i < modelsNumber; i++)
            if (list.get(i).equals(find))
                return i;
        return result;
    }
    
    public int IndexOf(String find)
    {
        int result = -1;
        for (int i = 0; i < modelsNumber; i++)
            if (list.get(i).getStringField().equals(find))
                return i;
        return result;
    }
    
    public int IndexOf(Integer find)
    {
        int result = -1;
        for (int i = 0; i < modelsNumber; i++)
            if (list.get(i).getIntField().equals(find))
                return i;
        return result;
    }
    
    public void Sort(Comparator<Model> comparator)
    {
        int listLength = list.size();
        Model key;
        int j;
        for (int i = 1; i < listLength; ++i) {
            key = list.get(i);
            j = i - 1;
            while (j >= 0 && comparator.compare(list.get(j), key) > 0) {
                list.set(j + 1, list.get(j--));
            }
            list.set(j + 1, key);
        }
    }
    
    public void SortByStringField()
    {
        ByStringComparer comparator = new ByStringComparer();
        Sort(comparator);
    }
    
    public void SortByIntField()
    {
        ByIntComparer comparator = new ByIntComparer();
        Sort(comparator);
    }
}
