package com.cc.service

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.beans.factory.annotation.Autowired
import scala.reflect.ClassTag
import java.lang.Long
import org.springframework.data.domain.Page
import java.util.List
import org.springframework.stereotype.Service
import javax.transaction.Transactional
import java.lang.Boolean
import org.springframework.data.domain.PageRequest

@Service
abstract class BaseService[T: ClassTag] {
    
    /** spring data jpa dao*/
    @Autowired val jpaRepository: JpaRepository[T, Long] = null
    
    /**
     * 添加记录
     * @param s
     * @return T
     */
    def save[S <: T](s: S) : T = jpaRepository.save(s)
    
    /**
     * 根据Id删除数据
     * @param id 数据Id
     * @return Unit
     */
    @Transactional
    def delete(id: Long): Unit = jpaRepository.delete(id)
    
    /**
     * 实体批量删除
     * @param lists
     * @return Unit
     */
    @Transactional
    def delete(lists: List[T]) : Unit = jpaRepository.delete(lists);
    
    /**
     * 根据Id更新数据
     * @param s
     * @return T
     */
    @Transactional
    def update[S <: T](s: S) = jpaRepository.save(s)
    
    /**
     * 根据Id查询
     * @param id 数据Id
     * @return T
     */
    def find[S <: T](id: Long) : T = jpaRepository.findOne(id)
    
    /**
     * 查询所有数据
     * @return List[T]
     */
    def findAll[S <: T]: List[T] = jpaRepository.findAll
    
    /**
     * 集合Id查询数据
     * @return List[T]
     */
    def findAll[S <: T](ids: List[Long]): List[T] = jpaRepository.findAll(ids)

    /**
     * 统计大小
     * @return Long
     */
    def count : Long = jpaRepository.count
    
    /**
     * 判断数据是否存在
     * @param id 数据Id
     * @return Boolean
     */
    def exist(id: Long) : Boolean = jpaRepository.exists(id)
    
    /**
     * 查询分页
     * @param page 起始页
     * @param pageSize 每页大小
     * @return Page[T]
     */
    def page[S <: T](page: Int, pageSize: Int): Page[T] = {
      var rpage = if (page < 1) 1 else page;
      var rpageSize = if (pageSize < 1) 5 else pageSize;
		  jpaRepository.findAll(new PageRequest(rpage - 1, pageSize))
    }    

}
