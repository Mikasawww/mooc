package com.entity.vo;

import com.entity.MingshiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 名师
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2024-03-19 22:50:28
 */
public class MingshiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 讲师姓名
	 */
	
	private String jiangshixingming;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 头像
	 */
	
	private String touxiang;
		
	/**
	 * 获奖证书
	 */
	
	private String huojiangzhengshu;
		
	/**
	 * 所属单位
	 */
	
	private String suoshudanwei;
		
	/**
	 * 教授课程
	 */
	
	private String jiaoshoukecheng;
		
	/**
	 * 详细信息
	 */
	
	private String xiangxixinxi;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
				
	
	/**
	 * 设置：讲师姓名
	 */
	 
	public void setJiangshixingming(String jiangshixingming) {
		this.jiangshixingming = jiangshixingming;
	}
	
	/**
	 * 获取：讲师姓名
	 */
	public String getJiangshixingming() {
		return jiangshixingming;
	}
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：头像
	 */
	 
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	
	/**
	 * 获取：头像
	 */
	public String getTouxiang() {
		return touxiang;
	}
				
	
	/**
	 * 设置：获奖证书
	 */
	 
	public void setHuojiangzhengshu(String huojiangzhengshu) {
		this.huojiangzhengshu = huojiangzhengshu;
	}
	
	/**
	 * 获取：获奖证书
	 */
	public String getHuojiangzhengshu() {
		return huojiangzhengshu;
	}
				
	
	/**
	 * 设置：所属单位
	 */
	 
	public void setSuoshudanwei(String suoshudanwei) {
		this.suoshudanwei = suoshudanwei;
	}
	
	/**
	 * 获取：所属单位
	 */
	public String getSuoshudanwei() {
		return suoshudanwei;
	}
				
	
	/**
	 * 设置：教授课程
	 */
	 
	public void setJiaoshoukecheng(String jiaoshoukecheng) {
		this.jiaoshoukecheng = jiaoshoukecheng;
	}
	
	/**
	 * 获取：教授课程
	 */
	public String getJiaoshoukecheng() {
		return jiaoshoukecheng;
	}
				
	
	/**
	 * 设置：详细信息
	 */
	 
	public void setXiangxixinxi(String xiangxixinxi) {
		this.xiangxixinxi = xiangxixinxi;
	}
	
	/**
	 * 获取：详细信息
	 */
	public String getXiangxixinxi() {
		return xiangxixinxi;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
			
}
