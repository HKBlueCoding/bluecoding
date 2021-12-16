package com.hk.coinhistory.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.hk.kakaopayreader.vo.KakaoPayReadyVO;

@Controller
public class CoinHistoryController {
	
	private static final Logger logger = LoggerFactory.getLogger(CoinHistoryController.class);
	 
	// [코인 결제 API]
	@RequestMapping(value = "/kakaopay/buy", method = {RequestMethod.GET, RequestMethod.POST},produces = "application/json; charset=utf8")
	@ResponseBody
	public Map<String, Object> kakaopay() {
		Map<String, Object> map = new HashMap<String, Object>();
			
		 	RestTemplate restTemplate = new RestTemplate();
			
			logger.debug("[kakao 결제 들어옴]");
			
			HttpHeaders headers = new HttpHeaders();
			headers.add("Authorization", "KakaoAK 6e7f56c4944064ee7b694227d4b2e459");
			headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
			headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
			
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("partner_order_id", "partner_order_id");
	        params.add("partner_user_id", "partner_user_id");
	        params.add("item_name", "BlueNovel유료코인");
	        params.add("quantity", "1");
	        params.add("total_amount", "2100");
	        params.add("tax_free_amount", "0");
	        params.add("approval_url", "http://localhost:8888/kakaopay/done");
	        params.add("cancel_url", "http://localhost:8888/kakaopay/cancel");
	        params.add("fail_url", "http://localhost:8888/kakaopay/fail");			
					
			HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);

			 try {
				 	KakaoPayReadyVO kakaoPayReadyVO = restTemplate.postForObject(new URI("https://kapi.kakao.com/v1/payment/ready"), body, KakaoPayReadyVO.class);
		            map.put("next_redirect_pc_url",kakaoPayReadyVO.getNext_redirect_pc_url());
				 	logger.debug("next_redirect_pc_url=="+kakaoPayReadyVO.getNext_redirect_pc_url());
		            return map;
		 
		        } catch (RestClientException e) {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		        } catch (URISyntaxException e) {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		        }			
		
		return map;
	}
	
	// [결제 성공시 URL]
	@GetMapping("/kakaopay/done")
	public String kakaopayDone(@RequestParam("pg_token") String pg_token) {
	 	RestTemplate restTemplate = new RestTemplate();
		
	 	logger.debug("[pg_token]="+pg_token);	 	
	 	// 서버로 요청할 header
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 6e7f56c4944064ee7b694227d4b2e459");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
			
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		
		
		
		return "done/kakaopayDone";
	}
	
	// [결제 취소시 URL]
	@GetMapping("/kakaopay/cancel")
	public String kakaopayCancel() {
		
		return "done/kakaopayCancel";
	}
	
	// [결제 실패시 URL]
	@GetMapping("/kakaopay/fail")
	public String kakaopayFail() {
		
		return "done/kakaopayFail";
	}		
	

}
