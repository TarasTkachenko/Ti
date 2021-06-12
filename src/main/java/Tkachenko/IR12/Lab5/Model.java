/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tkachenko.IR12.Lab5;

import java.util.Objects;

public class Model {
    private String _stringField;
    private Integer _intField;

    public Model(String stringField, Integer intField) {
        _stringField = stringField;
        _intField = intField;
    }

    public String getStringField() {
        return _stringField;
    }

    public void setStringField(String _stringField) {
        this._stringField = _stringField;
    }

    public Integer getIntField() {
        return _intField;
    }

    public void setIntField(Integer _intField) {
        this._intField = _intField;
    }
    
    @Override
    public String toString() {
        return "Model{" + "StringField=" + _stringField + ", IntField=" + _intField + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Model other = (Model) obj;
        if (!Objects.equals(this._intField, other._intField))
            return false;
        if (!Objects.equals(this._stringField, other._stringField))
            return false;
        return true;
    }
}
