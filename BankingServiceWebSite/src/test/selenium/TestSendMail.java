package test.selenium;

import static org.junit.jupiter.api.Assertions.*;

import java.util.concurrent.TimeUnit;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class TestSendMail extends TestDriver {

	ChromeDriver driver = getDriver();

	@Test
	public void choose_district() {
		driver.get("http://localhost:8080/BankingServiceWebSite/");
		String title = driver.getTitle();
		String expectedTitle = "Đăng nhập";
		assertEquals(title, expectedTitle);
		driver.close();
	}
	
}