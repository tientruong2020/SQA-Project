package com.banking.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.banking.model.tinhLaiVay;

class TestTinhLaiVay {

	@Test
	void test() {
		tinhLaiVay testlv = new tinhLaiVay();
		float tv = 	(float)56677.0;
		float ls = (float)0.08;
		int kh = 3;
		
		float result = (float)1511.3866;
		
		assertEquals(result, testlv.tinhLaiVayCoDinh(tv, ls, kh));
	}

}
