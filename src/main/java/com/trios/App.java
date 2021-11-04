package com.trios;

import javax.persistence.*;
import java.util.Scanner;

/**
 * Hello world!
 *
 */
public class App 
{
    private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("DBApp");
    public static void main( String[] args )
    {
        Scanner scanner = new Scanner(System.in);
        addEmployee( "Shane","Watson" );
        addEmployee( "James","Anderson" );
        addEmployee( "Shaun","Pollock" );
        addEmployee( "Hansi","Cronje" );

        getEmployee(1619);
        emf.close();
    }

    public static void addEmployee(String fname, String lname){
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = null;
        try{
            et = em.getTransaction();
            et.begin();
            Employee emp = new Employee();
            emp.setFirstName(fname);
            emp.setLastName(lname);
            emp.setEmail(fname+"."+lname+"@ymail.com");
            emp.setExtension("1234");
            emp.setJobTitle("Job Level 1");
            emp.setOfficeCode("TOR");
            em.persist(emp);
            et.commit();
        }catch (Exception ex){
            if(et!=null){
                et.rollback();
            }
        }finally {
            em.close();
        }
    }

    public static void getEmployee(int id){
        EntityManager em = emf.createEntityManager();
        try{

        TypedQuery<Employee> tq = em.createQuery("select e from Employee e where e.empId=:id", Employee.class);
        tq.setParameter("id", id);
        Employee emp = tq.getSingleResult();
        System.out.println(emp.getFirstName()+" "+emp.getLastName());
        }catch(Exception ex){
            ex.printStackTrace();
        }finally {
            {
                em.close();
            }
        }
    }
}
