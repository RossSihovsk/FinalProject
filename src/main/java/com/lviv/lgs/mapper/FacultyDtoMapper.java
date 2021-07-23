package com.lviv.lgs.mapper;

import com.lviv.lgs.dao.SubjectRepository;
import com.lviv.lgs.models.Faculty;
import com.lviv.lgs.models.Subject;
import com.lviv.lgs.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class FacultyDtoMapper {
    @Autowired
    private SubjectRepository subjectRepository;
    @Autowired
    private FileService fileService;

    public Faculty createEntity(MultipartFile file,
                                String name,
                                Integer countOfStudents,
                                List<Subject> subjects) throws IOException {

        Faculty faculty = new Faculty();
        List<String> collect = subjects.stream().map(subject -> subject.getName()).collect(Collectors.toList());
        List<Subject> allByNameLike = subjectRepository.getAllByNameIn(collect);
        mapSubjects(subjects , allByNameLike);
        faculty.setName(name);
        faculty.setCountOfStudents(countOfStudents);
        faculty.setLogoUrl(fileService.saveFileAndReturnPathForDB(file , faculty.getName()));
        faculty.setSubjects(subjects);

        return faculty;
    }

    private void mapSubjects(List<Subject> needSubjects , List<Subject> existSubjects){

        for (Subject needSubject : needSubjects) {
            for (Subject existSubject : existSubjects) {
                if (needSubject.getName().equalsIgnoreCase(existSubject.getName())){
                    needSubject.setId(existSubject.getId());
                }
            }
        }

    }


}
