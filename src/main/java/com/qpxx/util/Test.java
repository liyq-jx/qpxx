package com.qpxx.util;

public class Test {

	public static void main(String[] args) {
		System.out.println("abcd".matches("^[a-zA-Z\\d]\\w{3,11}[a-zA-Z\\d]$"));
	}

}
