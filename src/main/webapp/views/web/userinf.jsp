<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<% 
String monthSelected = request.getParameter("cus_monthbirthday");
if (monthSelected == null) {
	monthSelected = "Month";
}
String yearSelected = request.getParameter("cus_yearbirthday");
if (yearSelected == null) {
	yearSelected = "Year";
}
String daySelected = request.getParameter("cus_daybirthday");
if (daySelected == null) {
	daySelected = "Day";
}



%>
<body>
		<main id="main" class="page-content clearfix"
			style="margin-top: 128px;">
			<a id="mainContent" tabindex="-1"></a>
			<div class="cart-live-region" aria-live="polite" role="status">
			</div>
			<div class="container">
				<nav class="account-navigation" aria-label="My account">
					<ul>
						<li class=""><a href="${pageContext.request.contextPath}/views/web/accountoverview.jsp"> Account overview </a></li>
						<li class="order-history "><a href="${pageContext.request.contextPath}/views/web/order.jsp"> Orders </a></li>
						<li class=""><a href="${pageContext.request.contextPath}/user-update?action=show"> Personal details </a></li>
						<li><a href="${pageContext.request.contextPath}/login?action=logout">Logout</a>
					</ul>
				</nav>
			</div>
			<div id="primary" class="primary-content">
				<div class="registration container">
				<c:if test="${not empty ready}">
						<div class="account-edit-success">
						<i class="icon_CheckMark">
						</i> <span role="alert"> ${message} </span>
					</div>
					</c:if>
					<div class="page-header">
						<h1>
							<span class="subtitle">Modify account</span> <span class="title">Personal
								details</span>
						</h1>
					</div>
					<div class="row">
						<div class="col-xs-6 col-sm-offset-3">
							<form action="${pageContext.request.contextPath}/user-update" method="post"
								class="form-horizontal edit-account-form" id="RegistrationForm"
								novalidate="novalidate">
								<p class="required-msg">All fields marked with an * are
									mandatory</p>
								<div class="error-form global-error form-row" aria-live="polite"></div>
								<fieldset>
									<legend class="visually-hidden">Personal information</legend>
									<div class="form-row required form-row-select form-row--valid"
										data-requiredtext="Please enter your greeting"
										data-regexinvalidmessage="" aria-required="true">
										<div class="form-field-wrapper">
											<label class="visually-hidden"
												for="dwfrm_profile_customer_title">Title *</label>
											<div class="form-field">
												<div class="form-select-wrapper">
													<select class="form-select title form-field required"
														id="dwfrm_profile_customer_title"
														name="cus_title" data-dwname="title"
														title="Title" autocomplete="honorific-prefix"
														aria-required="true" aria-invalid="false"
														aria-describedby="dwfrm_profile_customer_title-error"
														value="dcm"
														><option
															class="form-selectOption" label="Title" value="Title">Title</option>
														<option class="form-selectOption" label="Mr." value="Mr."
															selected="selected">Mr.</option>
														<option class="form-selectOption" label="Mrs." value="Mrs.">Mrs.</option>
														<option class="form-selectOption" label="Ms." value="Ms.">Ms.</option>
														<option class="form-selectOption" label="-" value="">-</option></select><span
														id="dwfrm_profile_customer_title-error" class="error"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="form-row firstname required empty focus"
										data-requiredtext="Please enter your first name (A-Z, a-z, dash, apostrophe and space accepted)"
										data-regexinvalidmessage="" aria-required="true">

										<label class="form-label"
											for="dwfrm_profile_customer_firstname_d0hhfdpzzeru">First
											name *</label>
										<div class="form-field">
											<input class="form-input firstname form-field required"
												type="text"
												id="dwfrm_profile_customer_firstname_d0hhfdpzzeru"
												name="cus_fname"
												value="${USERMODEL.fName}" maxlength="13" data-dwname="firstname"
												autocomplete="given-name" aria-required="true">
										</div>

									</div>
									<div class="form-row lastname required empty focus"
										data-requiredtext="Please enter your last name (A-Z, a-z, dash, apostrophe and space accepted)"
										data-regexinvalidmessage="" aria-required="true">

										<label class="form-label"
											for="dwfrm_profile_customer_lastname_d0nvjfwfdkjp">Last
											name *</label>
										<div class="form-field">
											<input class="form-input lastname form-field required"
												type="text"
												id="dwfrm_profile_customer_lastname_d0nvjfwfdkjp"
												name="cus_lname"
												value="${USERMODEL.lName}" maxlength="13" data-dwname="lastname"
												autocomplete="family-name" aria-required="true">
										</div>

									</div>

									<div class="form-row lastname required empty focus"
										data-requiredtext="Please enter your last name (A-Z, a-z, dash, apostrophe and space accepted)"
										data-regexinvalidmessage="" aria-required="true">

										<label class="form-label"
											for="dwfrm_profile_customer_lastname_d0nvjfwfdkjp">Address
											*</label>
										<div class="form-field">
											<input class="form-input lastname form-field required"
												type="text"
												id="dwfrm_profile_customer_lastname_d0nvjfwfdkjp"
												name="cus_address" value="${USERMODEL.address}"
												maxlength="50" data-dwname="lastname"
												autocomplete="family-name" aria-required="true">
										</div>

									</div>

									<label class="form-label">Birthday</label>
									<div class="selectbirthday">
										<div class="form-row  form-row-select" data-requiredtext=""
											data-regexinvalidmessage="">
											<div class="form-field-wrapper">
												<label class="visually-hidden"
													for="dwfrm_profile_customer_daybirthday">Birthday
													Day</label>
												<div class="form-field">
													<div class="form-select-wrapper">
														<select class="form-select daybirthday"
															id="dwfrm_profile_customer_daybirthday"
															name="cus_daybirthday"
															data-dwname="daybirthday" autocomplete="bday-day"
															aria-label="Birthday Day"><option
																class="form-selectOption" label="Day" value="Day">Day</option>
															<%
																for (int day = 1; day <= 31; day++) {
															%>
															<option class="form-selectOption" value="<%=day%>" label="<%= day %>"
																<%if (daySelected.equals(day + "")) {%> selected <%}%>>
																<%=day%></option>
															<%
																}
															%>
														</select>
													</div>
												</div>
											</div>
										</div>
										</div>

							<div class="selectbirthday"> 
										<div class="form-row  form-row-select" data-requiredtext=""
											data-regexinvalidmessage="">
											<div class="form-field-wrapper">
												<label class="visually-hidden"
													for="dwfrm_profile_customer_monthbirthday">Month</label>
												<div class="form-field">
													<div class="form-select-wrapper">
														<select class="form-select monthbirthday"
															id="dwfrm_profile_customer_monthbirthday"
															name="cus_monthbirthday"
															data-dwname="monthbirthday" autocomplete="bday-month"
															aria-label="Month"><option
																class="form-selectOption" label="Month" value="Month">Month</option>
											
															<%
																for (int month = 1; month <= 12; month++) {
															%>
															<option class="form-selectOption" value="<%=month%>"
																<%if (monthSelected.equals(month + "")) {%> selected
																<%}%>>
																<%=month%></option>
															<%
																}
															%>
														</select>
													</div>
												</div>
											</div>
										</div>
							
									</div>
												<!-- test -->
					<div class="selectbirthday"> 
										<div class="form-row  form-row-select" data-requiredtext=""
											data-regexinvalidmessage="">
											<div class="form-field-wrapper">
												<label class="visually-hidden"
													for="dwfrm_profile_customer_yearbirthday">Year</label>
												<div class="form-field">
													<div class="form-select-wrapper">
														<select class="form-select yearbirthday"
															id="dwfrm_profile_customer_yearbirthday"
															name="cus_yearbirthday"
															data-dwname="yearbirthday" autocomplete="bday-month"
															aria-label="Year"><option
																class="form-selectOption" label="Year" value="Year">Year</option>
															<%
																for (int year = 1980; year <= 2020; year++) {
															%>
															<option class="form-selectOption" value="<%=year%>"
																<%if (yearSelected.equals(year + "")) {%> selected <%}%>>
																<%=year%></option>
															<%
																}
															%>
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>
										<!-- end test -->
									
									
									
									<div class="form-row required"
										data-requiredtext="Please enter your e-mail address (format: email@domain.fr)"
										data-regexinvalidmessage="" aria-required="true">

										<label class="form-label" for="dwfrm_profile_customer_email">E-mail
											address *</label>
										<div class="form-field">
											<input class="form-input email form-field required"
												type="text" id="dwfrm_profile_customer_email"
												name="cus_email" value="${USERMODEL.email}"
												maxlength="50" data-dwname="email" disabled="disabled"
												aria-required="true">
										</div>
										
									</div>

									<div class="form-row form-row-button">
									<input type="hidden" value="update" name="action" />
									<input type="hidden" value="${USERMODEL.email}" name="email" />
										<button type="submit" value="Apply"
											name="dwfrm_profile_confirm">Save changes</button>
									</div>
									<div class="form-row form-row-button">
										<button type="button" class="delete-account"
											value="Delete account" name="dwfrm_profile_deleteaccount">
											Delete account</button>
									</div>
									
								</fieldset>
							</form>
							<form action="#" method="post" class="form-horizontal"
								id="ChangePassowrdForm" novalidate="novalidate">
								<fieldset>
									<legend class="visually-hidden">Create new password</legend>
									<div class="form-row required empty" data-requiredtext=""
										data-regexinvalidmessage="" aria-required="true">

										<label class="form-label"
											for="dwfrm_profile_login_currentpassword_d0sdvmecjlfo">Current
											password *</label>
										<div class="form-field">
											<input class="form-input currentpassword form-field required"
												type="password"
												id="dwfrm_profile_login_currentpassword_d0sdvmecjlfo"
												name="cus_password"
												value="" maxlength="14" data-dwname="currentpassword"
												autocomplete="current-password" aria-required="true">
										</div>

									</div>
									<div class="form-row required empty" data-requiredtext=""
										data-regexinvalidmessage="" aria-required="true">

										<label class="form-label"
											for="dwfrm_profile_login_newpassword_d0pafajawcoo">New
											password *</label>
										<div class="form-field">
											<input class="form-input newpassword form-field required"
												type="password"
												id="dwfrm_profile_login_newpassword_d0pafajawcoo"
												name="cus_newpass" value=""
												maxlength="14" data-dwname="newpassword"
												autocomplete="new-password"
												aria-describedby="profile_login_password-instruction"
												aria-required="true">
										</div>

										<div class="form-caption"
											id="profile_login_password-instruction">Please enter a
											password containing at least 8 characters, with 1 number and
											1 uppercase letter.</div>
									</div>
									<div class="form-row required empty" data-requiredtext=""
										data-regexinvalidmessage="" aria-required="true">

										<label class="form-label"
											for="dwfrm_profile_login_newpasswordconfirm_d0xqdsptjeuw">Confirmation
											of new password *</label>
										<div class="form-field">
											<input
												class="form-input newpasswordconfirm form-field required"
												type="password"
												id="dwfrm_profile_login_newpasswordconfirm_d0xqdsptjeuw"
												name="cus_confnewpass"
												value="" maxlength="14" data-dwname="newpasswordconfirm"
												data-rule-equalto=".newpassword" autocomplete="off"
												aria-required="true">
										</div>

									</div>
									<div class="form-row form-row-button">
										<button type="submit" value="Apply"
											name="dwfrm_profile_changepassword">Apply</button>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
				<div class="customer-support">
					<div class="content-asset">
						<div class="title">Cần giúp hôm?</div>
						<div class="container">
							<div class="text">
								<p class="subtitle">Client Services</p>
								Phục vụ từ 10h sáng đến 3h đêm nha mấy cưng
							</div>
							<div class="links">
								<a href="#" class="contact-popin"><i class="icon_Email"></i>Email</a>
								<a href="tel:0929363511" class="call-to-button"><i
									class="icon_Call"></i>Call</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
</body>

</html>