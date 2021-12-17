package com.hk.kakaopayapproval.vo;

import java.sql.Date;

import com.hk.amount.vo.AmountVO;

public class KakaoPayApprovalVO {
	
	private String aid;
	private String tid;
	private String cid;
	private String sid;
	private String partner_order_id;
	private String partner_user_id;
	private String payment_method_type;
    private String item_name;
    private String item_code;
    private String payload;
    private AmountVO amount;
    private Date created_at;
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getPartner_order_id() {
		return partner_order_id;
	}
	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}
	public String getPartner_user_id() {
		return partner_user_id;
	}
	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}
	public String getPayment_method_type() {
		return payment_method_type;
	}
	public void setPayment_method_type(String payment_method_type) {
		this.payment_method_type = payment_method_type;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_code() {
		return item_code;
	}
	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}
	public String getPayload() {
		return payload;
	}
	public void setPayload(String payload) {
		this.payload = payload;
	}
	public AmountVO getAmount() {
		return amount;
	}
	public void setAmount(AmountVO amount) {
		this.amount = amount;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	@Override
	public String toString() {
		return "KakaoPayApprovalVO [aid=" + aid + ", tid=" + tid + ", cid=" + cid + ", sid=" + sid
				+ ", partner_order_id=" + partner_order_id + ", partner_user_id=" + partner_user_id
				+ ", payment_method_type=" + payment_method_type + ", item_name=" + item_name + ", item_code="
				+ item_code + ", payload=" + payload + ", amount=" + amount + ", created_at=" + created_at + "]";
	}
    
}
