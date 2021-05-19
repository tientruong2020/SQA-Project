//package com.banking.test.phieunoptiendao;
//
//import static org.junit.jupiter.api.Assertions.*;
//
//import java.sql.Connection;
//import java.sql.Date;
//import java.sql.SQLException;
//
//import org.junit.jupiter.api.Test;
//
//import com.banking.dao.UsersDAO;
//import com.banking.entity.hopDongVay;
//import com.banking.entity.phieunoptien;
//
//class TestThemPhieuNop {
//
//	@Test
//	void test_Success() throws ClassNotFoundException, SQLException {
//		boolean kqTest= true;
//		
//		Connection connection = UsersDAO.getDAOConnection();
//		connection.setAutoCommit(false);
//		
//		try {
//			phieunoptien pnt = new phieunoptien();
//			hopDongVay hdv = new hopDongVay();
//			long millis=System.currentTimeMillis();  
//			Date now = new Date(millis);
//			hdv.setID(10);
//			pnt.setHopDongVay(hdv);
//			pnt.setNgayDong(now);
//			pnt.setTienLai((float)1);
//			pnt.setTienGoc((float)0);
//			pnt.setTimeID(1);
//			
//		} finally {
//			// TODO: handle finally clause
//		}
//	}
//
//}
