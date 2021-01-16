package ute.DoAn1.service.impl;

import java.util.List;
import java.util.Properties;

import javax.inject.Inject;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import ute.DoAn1.DAO.IOrderDAO;
import ute.DoAn1.model.OrderModel;
import ute.DoAn1.service.IOrderService;

public class OrderService implements IOrderService {
	@Inject
	private IOrderDAO orderDAO;

	@Override
	public OrderModel save(OrderModel orderModel) {
		Long neworder = orderDAO.save(orderModel);
		return orderDAO.findOne(neworder);
	}

	@Override
	public OrderModel findOne(long order_id) {
		return orderDAO.findOne(order_id);
	}

	@Override
	public List<OrderModel> findAllE(String user_email) {
		return orderDAO.findAllE(user_email);
	}

	@Override
	public List<OrderModel> findAll() {
		return orderDAO.findAll();
	}

	@Override
	public void confirm(OrderModel orderModel) {
		orderDAO.confirm(orderModel);

	}

	@Override
	public void delete(OrderModel orderModel) {
		orderDAO.delete(orderModel);

	}

	@Override
	public Long totalOrderPrice() {
		return orderDAO.totalOrderPrice();
	}

	@Override
	public boolean sendMail(String to, String subject, String text) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("phamngochung3032001@gmail.com", "hung3032000");

			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader(text, "text/html; charset=UTF-8");
			message.setFrom(new InternetAddress("phamngochung3032001@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(text);
			
			Transport.send(message);
		} catch (MessagingException e) {
			return false;
		}
		return true;
	}

}
