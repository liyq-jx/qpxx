package com.qpxx.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.util.Base64Utils;

public class EncryptioMD5 {

	public static String encryptioMD5(String str){
		
		String strs="";
		try {
			MessageDigest	messageDigest = MessageDigest.getInstance("MD5");
			strs= Base64Utils.encodeToString(messageDigest.digest(str.getBytes("UTF-8")));
		} catch (NoSuchAlgorithmException |UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return strs;
	}
	
	
	public static void main(String[] args){
		
		System.out.println(EncryptioMD5.encryptioMD5("abcdefg"));
	}
}
