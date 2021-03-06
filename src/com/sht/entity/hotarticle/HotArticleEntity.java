package com.sht.entity.hotarticle;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.*;

import com.sht.entity.articlenews.ArticleNewsEntity;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

/**   
 * @Title: Entity
 * @Description: 热门文章
 * @author zhangdaihao
 * @date 2018-05-29 21:54:35
 * @version V1.0   
 *
 */
@Entity
@Table(name = "sht_hot_article", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings("serial")
public class HotArticleEntity implements java.io.Serializable {
	/**id*/
	private java.lang.String id;
	/**文章新闻ID*/
	private java.lang.String articleId;
	/**发布时间*/
	private java.util.Date publishTime;
	/**下架时间*/
	private java.util.Date closingTime;
	/**排序*/
	private double orders;
	/**文章状态*/
	private java.lang.String status;

	/**文章新闻信息 临时 实体*/
	private ArticleNewsEntity articleNewsEntity;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  id
	 */
	
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=32)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  id
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  文章新闻ID
	 */
	@Column(name ="ARTICLE_ID",nullable=true,length=32)
	public java.lang.String getArticleId(){
		return this.articleId;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  文章新闻ID
	 */
	public void setArticleId(java.lang.String articleId){
		this.articleId = articleId;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  发布时间
	 */
	@Column(name ="PUBLISH_TIME",nullable=true)
	public java.util.Date getPublishTime(){
		return this.publishTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  发布时间
	 */
	public void setPublishTime(java.util.Date publishTime){
		this.publishTime = publishTime;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  下架时间
	 */
	@Column(name ="CLOSING_TIME",nullable=true)
	public java.util.Date getClosingTime(){
		return this.closingTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  下架时间
	 */
	public void setClosingTime(java.util.Date closingTime){
		this.closingTime = closingTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  排序
	 */
	@Column(name ="ORDERS",nullable=true,length=11)
	public double getOrders(){
		return this.orders;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  排序
	 */
	public void setOrders(double orders){
		this.orders = orders;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  文章状态
	 */
	@Column(name ="STATUS",nullable=true,length=32)
	public java.lang.String getStatus(){
		return this.status;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  文章状态
	 */
	public void setStatus(java.lang.String status){
		this.status = status;
	}

	@Transient
	public ArticleNewsEntity getArticleNewsEntity() {
		return articleNewsEntity;
	}

	public void setArticleNewsEntity(ArticleNewsEntity articleNewsEntity) {
		this.articleNewsEntity = articleNewsEntity;
	}
}
