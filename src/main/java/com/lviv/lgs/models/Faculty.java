package com.lviv.lgs.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "t_faculty")
public class Faculty {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private FacultyName name;

    private Integer countOfStudents;

    @ElementCollection
    private List<Subject> subjects;

    public Faculty() {
    }

    public Faculty(Integer id, FacultyName name, Integer countOfStudents, List<Subject> subjects) {
        this.id = id;
        this.name = name;
        this.countOfStudents = countOfStudents;
        this.subjects = subjects;
    }

    public Faculty(FacultyName name, Integer countOfStudents, List<Subject> subjects) {
        this.name = name;
        this.countOfStudents = countOfStudents;
        this.subjects = subjects;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public FacultyName getName() {
        return name;
    }

    public void setName(FacultyName name) {
        this.name = name;
    }

    public Integer getCountOfStudents() {
        return countOfStudents;
    }

    public void setCountOfStudents(Integer countOfStudents) {
        this.countOfStudents = countOfStudents;
    }

    public List<Subject> getSubjects() {
        return subjects;
    }

    public void setSubjects(List<Subject> subjects) {
        this.subjects = subjects;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (countOfStudents != null ? countOfStudents.hashCode() : 0);
        result = 31 * result + (subjects != null ? subjects.hashCode() : 0);
        return result;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Faculty faculty = (Faculty) o;

        if (id != null ? !id.equals(faculty.id) : faculty.id != null) return false;
        if (name != faculty.name) return false;
        if (countOfStudents != null ? !countOfStudents.equals(faculty.countOfStudents) : faculty.countOfStudents != null)
            return false;
        return subjects != null ? subjects.equals(faculty.subjects) : faculty.subjects == null;
    }

    @Override
    public String toString() {
        return "Faculty{" +
                "id=" + id +
                ", name=" + name +
                ", numberOfStudents=" + countOfStudents +
                ", subjects=" + subjects +
                '}';
    }
}
