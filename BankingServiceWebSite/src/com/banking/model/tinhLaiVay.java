package com.banking.model;

public class tinhLaiVay {
	public float tinhLaiVayCoDinh(float tienVay, float laiSuat, int kiHan) {
		float tempLVCD = tienVay * (laiSuat/kiHan);
		return tempLVCD;
	}
	
	public float tinhLaiVayDuNo(float tienVay, int timeID, int kiHan, float laiSuat) {
		float tempLVDN = (tienVay - (tienVay/kiHan)*timeID) * laiSuat;
		return tempLVDN;
	}
}
