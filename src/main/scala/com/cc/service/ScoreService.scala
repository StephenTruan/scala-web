package com.cc.service

import com.cc.enties.Score
import com.cc.repository.ScoreRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class ScoreService extends BaseService[Score] {

  @Autowired val scoreRepository: ScoreRepository = null

}
