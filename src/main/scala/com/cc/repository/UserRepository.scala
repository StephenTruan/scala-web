package com.cc.repository

import java.util.List

import com.cc.enties.User
import org.springframework.data.jpa.repository.JpaRepository
import java.lang.Long

trait UserRepository extends JpaRepository[User, Long] {

  def findByName(name: String): List[User]

}
