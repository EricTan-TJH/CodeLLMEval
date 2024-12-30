package com.next4.ai.controller;

import com.next4.ai.dto.ExpertAdviseDto;
import com.next4.ai.dto.Result;
import com.next4.ai.service.AdviseService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequestMapping("/api/v1/advice")
public class AdviseController  {
    @Autowired
    AdviseService adviseService;

    @PostMapping("/submitExpertAdvise")
    public Result<Integer> submitExpertAdvise(@RequestBody ExpertAdviseDto expertAdviseDto){
        Integer expertAdviseId = adviseService.addOrUpdateExpertAdvise(expertAdviseDto);
        return Result.succ(expertAdviseId);
    }
}
