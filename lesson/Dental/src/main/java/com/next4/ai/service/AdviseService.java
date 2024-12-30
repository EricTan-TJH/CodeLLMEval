package com.next4.ai.service;

import com.next4.ai.dto.ExpertAdviseDto;
import org.springframework.stereotype.Service;

public interface AdviseService {
    Integer addOrUpdateExpertAdvise(ExpertAdviseDto expertAdviseDto);
}
