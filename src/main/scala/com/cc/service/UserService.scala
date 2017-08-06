package com.cc.service

import java.util.List

import com.cc.enties.User
import org.springframework.beans.factory.annotation.Autowired
import com.cc.repository.UserRepository
import org.springframework.stereotype.Service

@Service
class UserService extends BaseService[User] {

  @Autowired val userRepository: UserRepository = null

  def findByName(name: String): List[User] = userRepository.findByName(name)

}
