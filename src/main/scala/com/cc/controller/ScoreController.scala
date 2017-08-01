package com.cc.controller

import com.cc.enties.Score
import com.cc.service.ScoreService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.{RequestMapping, RestController}
import java.util.List

@RestController
@RequestMapping(value = Array("/score"))
class ScoreController @Autowired()(private val scoreService: ScoreService) {

  @RequestMapping(value = Array("list"))
  def scores():List[Score]={
    scoreService.findAll
  }

}
