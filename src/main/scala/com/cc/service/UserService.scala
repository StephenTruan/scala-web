package com.cc.service

import com.cc.enties.User
import org.springframework.beans.factory.annotation.Autowired
import com.cc.repository.UserRepository
import org.springframework.stereotype.Service

@Service
class UserService extends BaseService[User] {

  @Autowired val userRepository: UserRepository = null

}
