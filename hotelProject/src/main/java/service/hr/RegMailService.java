package service.hr;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;

public class RegMailService {
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendMail(String receiver, String empId) {
		MimeMessage msg = mailSender.createMimeMessage();
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyyMMddHHmmss");
		String num = dateForm.format(new Date());
		String content = "<html><body><br/><br/><p style='text-align:center'>" + 
			"아래 링크를 눌러 가입을 완료하고, 로그인하십시오.<br/>" + 
			"<a href='http://192.168.4.117:9080/hotelProject/applyMailing?num="+num+"&reciver="+receiver+"&empId="+empId+"'>"+
			"<b></b></a>"+
			"</p><br/><br/></body></html>";
		String subject = "가입환영인사";
		try {
			msg.setHeader("content-type", "text/html;charset=UTF-8");
			msg.setContent(content, "text/html;charset=UTF-8");
			msg.setSubject(subject);
			msg.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiver));
			mailSender.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}