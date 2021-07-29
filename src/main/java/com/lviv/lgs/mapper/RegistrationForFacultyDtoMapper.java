package com.lviv.lgs.mapper;


import java.io.IOException;
import java.util.List;

import com.lviv.lgs.models.Faculty;
import com.lviv.lgs.models.RegForFaculty;
import com.lviv.lgs.models.User;
import com.lviv.lgs.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

@Component
public class RegistrationForFacultyDtoMapper {
    @Autowired
    private FileService fileService;

    public RegForFaculty createEntity(MultipartFile filePhoto,
                                      MultipartFile fileDocument,
                                      Faculty faculty,
                                      User user,
                                      List<Integer> marks) throws IOException {

        RegForFaculty registrationForFaculty = new RegForFaculty();
        registrationForFaculty.setFaculty(faculty);
        registrationForFaculty.setUser(user);
        registrationForFaculty.setMarks(marks);
        System.out.println(user.getFirstName()+"   "+user.getLastName());
        registrationForFaculty.setUploadPhoto(fileService.saveFileAndReturnPathForDB(filePhoto , user.getFirstName() +
                "_" + user.getLastName() + "_photo"));
        registrationForFaculty.setUploadDocument(fileService.saveFileAndReturnPathForDB(fileDocument , user.getFirstName() +
                "_" + user.getLastName() + "_document"));



        return registrationForFaculty;
    }
}
