package ftn.isamrs.tim5.service;

import ftn.isamrs.tim5.dto.PerformanceCreateDTO;
import ftn.isamrs.tim5.model.Performance;
import ftn.isamrs.tim5.model.Account;

public interface PerformanceService {

    Performance savePerformance(PerformanceCreateDTO dto);
}