package com.trios;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "departments")
public class Department {
    @Id
    @Column(name = "department_id")
    private int departmentId;

    @Column(name = "department_name")
    private String departmentName;

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    @Column(name = "location_id")
    private int locationId;

    @OneToMany(mappedBy = "departmentId")
    private List<Employee> employeeList;
}
