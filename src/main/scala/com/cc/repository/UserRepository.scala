package com.cc.repository

import java.util.List

import com.cc.enties.User
import org.springframework.data.jpa.repository.{JpaRepository, Query}
import java.lang.Long

trait UserRepository extends JpaRepository[User, Long] {

  def findByName(name: String): List[User]

  @Query(value = "SELECT u. name, s.math, s.english FROM User u LEFT JOIN u.scores s")
  def findAllUserAndScore(): List[Object]

}
