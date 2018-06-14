package com.gestorsye.dao;
import java.util.List;

public interface InterfaceDao <T> {
    
    
    public boolean create(T dto);
    public boolean delete(Object key);
    public boolean update(Object key);
    public T select(Object key);
    public List<T> selectAll();
    
    
    
    
}
