package com.cc.enties

import javax.persistence.{Entity, Id, Table, Column, GeneratedValue, JoinColumn, ManyToOne}

import scala.beans.BeanProperty

@Table(name = "TBL_SCORE")
@Entity
class Score {

  @Id
  @Column(name = "UUID")
  @GeneratedValue
  @BeanProperty
  var id: Long = _

  @BeanProperty
  @Column(name = "MATH")
  var math: Double = _

  @BeanProperty
  @Column(name = "ENGLISH")
  var english: Double = _

  @BeanProperty
  @JoinColumn(name = "USER_UUID", referencedColumnName = "UUID")
  @ManyToOne
  var user: User = _

  override def toString: String = "用户：" + user.name + "数学成绩：" + math + "英语成绩：" + english

}
