package com.lviv.lgs.service;

import com.lviv.lgs.models.RegForFaculty;
import org.springframework.stereotype.Service;

import java.util.Comparator;

@Service
public class RegistrationMarksCompareService implements Comparator<RegForFaculty> {
    @Override
    public int compare(RegForFaculty t1, RegForFaculty t2) {
        Integer reduce1 = t1.getMarks().stream().reduce(0, Integer::sum);
        Integer reduce2 = t2.getMarks().stream().reduce(0, Integer::sum);

        return reduce1 < reduce2 ? 1 : -1;
    }
}