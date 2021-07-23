/**
 * The Final project on "Java Developer" Course in LOGOS IT Academy
 * University portal (Admissions Committee)
 *
 * Class ua.uz.alex.university.domain.RegistrationForFaculty  - domain layer
 *
 * @author Oleksandr Lukhanin
 */

package com.lviv.lgs.models;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "faculty_registrations")
public class RegForFaculty {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @ManyToOne()
    @JoinColumn(name = "faculty_id", referencedColumnName = "id")
    private Faculty faculty;

    @ManyToOne()
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    @ElementCollection
    private List<Integer> marks;

    @Column
    private String uploadPhoto;

    @Column
    private String uploadDocument;

    @Column
    private Integer sumMarks;

    @Transient
    private int facultyId;

    @Transient
    private String email;

    public RegForFaculty() {
    }



    public RegForFaculty(Faculty faculty, User user, List<Integer> marks) {
        this.faculty = faculty;
        this.user = user;
        this.marks = marks;
    }

    public RegForFaculty(Integer id, Faculty faculty, User user, List<Integer> marks) {
        this.id = id;
        this.faculty = faculty;
        this.user = user;
        this.marks = marks;
        // this.marksSum = marks.stream().reduce(0, Integer::sum);
    }

    public String getUploadDocument() {
        return uploadDocument;
    }

    public void setUploadDocument(String uploadFile2) {
        this.uploadDocument = uploadFile2;
    }

    public String getUploadPhoto() {
        return uploadPhoto;
    }

    public void setUploadPhoto(String uploadFile) {
        this.uploadPhoto = uploadFile;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Faculty getFaculty() {
        return faculty;
    }

    public void setFaculty(Faculty faculty) {
        this.faculty = faculty;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Integer> getMarks() {
        return marks;
    }

    public void setMarks(List<Integer> marks) {
        this.marks = marks;
    }

    public int getFacultyId() {
        return facultyId;
    }

    public void setFacultyId(int facultyId) {
        this.facultyId = facultyId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getSumMarks() {
        return sumMarks;
    }

    public void setSumMarks(Integer sumMarks) {

        this.sumMarks = sumMarks;

    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RegForFaculty that = (RegForFaculty) o;
        return facultyId == that.facultyId &&
                Objects.equals(id, that.id) &&
                Objects.equals(faculty, that.faculty) &&
                Objects.equals(user, that.user) &&
                Objects.equals(marks, that.marks) &&
                Objects.equals(uploadPhoto, that.uploadPhoto) &&
                Objects.equals(uploadDocument, that.uploadDocument) &&
                Objects.equals(sumMarks, that.sumMarks) &&
                Objects.equals(email, that.email);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, faculty, user, marks, uploadPhoto, uploadDocument, sumMarks, facultyId, email);
    }
}
