package com.luntan.base.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.http.HttpMethod;
import org.springframework.http.client.ClientHttpRequest;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.luntan.base.bo.LoginInfo;
import com.luntan.base.bo.User;
import com.luntan.base.dao.ILoginDao;
import com.luntan.base.dao.IUserDao;
@Service("baseService")
public class BaseServiceImpl implements IBaseService {
	@Resource
	private  IUserDao iUserDao;
	@Resource 
	private  ILoginDao iLoginDao;
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return this.iUserDao.selectByPrimaryKey(userId);
	}
	public LoginInfo login(LoginInfo loginInfo) {
		LoginInfo info=iLoginDao.getLogInfo(loginInfo);
		return info;
	}
	public String getCateg() {
		List<Map<Integer,String>> m = iLoginDao.getCateg();
		String str=JSONObject.toJSONString(m);
		return str;
	}
	
	
	/**public String getNews() {
		// TODO Auto-generated method stub
		URI uri=null;
		ClientHttpRequest req=null;
		ClientHttpResponse res=null;
		InputStream input=null;
		InputStreamReader readInput=null;
		BufferedReader buf=null;
		StringBuffer sb=new StringBuffer();
		SimpleClientHttpRequestFactory scr=new SimpleClientHttpRequestFactory();
		try {
				 uri=new URI("http://news.baidu.com/");
				req=scr.createRequest(uri, HttpMethod.GET);
				res= req.execute();
				input=res.getBody();
				readInput=new InputStreamReader(input,Charset.forName("UTF-8"));
				 buf=new BufferedReader(readInput);
				String str="";
				while((str=buf.readLine())!=null){
					sb.append(str);
				}
			} catch (URISyntaxException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					buf.close();
					readInput.close();
					input.close();
					res.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
				
			}
		try {
			URL url=new URL("http://wangyi.butterfly.mopaasapp.com/news/api?type=war&page=1&limit=10");
			URLConnection conn=url.openConnection();
			本处 添加user-agent
			  是因为 该api 限制了java client 的访问
			 
			conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
			conn.connect();
			input=conn.getInputStream();
			readInput=new InputStreamReader(input,Charset.forName("utf-8"));
			buf=new BufferedReader(readInput);
			String str="";
			while((str=buf.readLine())!=null){
				sb.append(str);
			};
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return sb.toString();
	}**/
	
	

}
