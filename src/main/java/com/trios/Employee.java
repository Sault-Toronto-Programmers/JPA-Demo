package com.trios;

import javax.persistence.*;

@Entity
@Table(name="employees")
public class Employee {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="employeeNumber", unique = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int empId;

    @Column(name="lastName")
    private String lastName;

    @Column(name="firstName")
    private String firstName;

    @Column(name="extension")
    private String extension;

    @Column(name="email")

    private String email;

    @Column(name="officeCode")
    private String officeCode;


    @Column(name="jobTitle")
    private String jobTitle;

    @ManyToOne
    @JoinColumn(name = "department_id")
    private Department departmentId;

    public Department getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Department departmentId) {
        this.departmentId = departmentId;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOfficeCode() {
        return officeCode;
    }

    public void setOfficeCode(String officeCode) {
        this.officeCode = officeCode;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }
}
