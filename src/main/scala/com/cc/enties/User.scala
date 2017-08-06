package com.cc.enties

import java.util.Set
import java.util.Date

import scala.beans.BeanProperty
import javax.persistence.{Table, Entity, Id, GeneratedValue, Column, OneToMany}

import org.hibernate.validator.constraints.NotEmpty
import org.springframework.format.annotation.DateTimeFormat
import javax.validation.constraints.NotNull

import org.hibernate.validator.constraints.NotBlank

@Table(name = "TBL_USER")
@Entity
class User {

  @Id
  @GeneratedValue
  @BeanProperty
  @Column(name = "UUID")
  var id: Long = _

  @BeanProperty
  @NotBlank
  var name: String = _

  @BeanProperty
  @NotNull
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  var birthday: Date = _

  @BeanProperty
  @NotEmpty
  var telephone: String = _

  @OneToMany(mappedBy = "user")
  var scores: Set[Score] = _

  override def toString = "id = " + id + ",name = " + name + ",birthday = " + birthday + ",telephone = " + telephone

}
