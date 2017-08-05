package com.cc.repository

import com.cc.enties.Score
import org.springframework.data.jpa.repository.JpaRepository
import java.lang.Long

trait ScoreRepository extends JpaRepository[Score, Long]
