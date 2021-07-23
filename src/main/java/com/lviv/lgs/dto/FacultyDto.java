package com.lviv.lgs.dto;

import com.lviv.lgs.models.Subject;

import java.util.List;

public class FacultyDto {

    private Integer id;
    private String name;
    private Integer countOfStudents;
    private String logoUrl;
    private List<Subject> subjects;

    public FacultyDto() {
    }

    public FacultyDto(Integer id, String name, Integer countOfStudents, String logoUrl, List<Subject> subjects) {
        this.id = id;
        this.name = name;
        this.countOfStudents = countOfStudents;
        this.logoUrl = logoUrl;
        this.subjects = subjects;
    }

    public FacultyDto(String name, Integer countOfStudents, String logoUrl, List<Subject> subjects) {
        this.name = name;
        this.countOfStudents = countOfStudents;
        this.logoUrl = logoUrl;
        this.subjects = subjects;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCountOfStudents() {
        return countOfStudents;
    }

    public void setCountOfStudents(Integer countOfStudents) {
        this.countOfStudents = countOfStudents;
    }

    public String getLogoUrl() {
        return logoUrl;
    }

    public void setLogoUrl(String logoUrl) {
        this.logoUrl = logoUrl;
    }

    public List<Subject> getSubjects() {
        return subjects;
    }

    public void setSubjects(List<Subject> subjects) {
        this.subjects = subjects;
    }


}