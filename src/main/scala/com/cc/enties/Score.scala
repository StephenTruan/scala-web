package com.cc.enties

import javax.persistence._

import scala.beans.BeanProperty

@Table(name = "TBL_SCORE")
@Entity
class Score {

  @Id
  @Column(name = "ID")
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
  @Column(name = "USER_ID")
  var userId: Long = _

  override def toString: String = "用户ID：" + userId + "数学成绩：" + math + "英语成绩：" + english

}
