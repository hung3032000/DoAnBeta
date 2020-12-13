<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>


<body>
	<main id="main" class="page-content clearfix"
		style="margin-top: 128px;">
		<a id="mainContent" tabindex="-1"></a>
		<div class="cart-live-region" aria-live="polite" role="status">
		</div>
		<div id="primary" class="primary-content">
			<div class="registration container">
				<div class="page-header">
					<h1>
						<span class="subtitle">Create an account</span> <span
							class="title">My account</span>
					</h1>
					<p class="text">Be the first to know about new collections and
						exclusive events through your personal account.</p>
				</div>
				<c:if test="${not empty message}">
					<div class="error">${message}</div>
				</c:if>
				<div class="row">
					<div class="col-xs-6 col-sm-offset-3">
						<form action="${pageContext.request.contextPath}/user-new"
							method="POST" class="form-horizontal edit-account-form"
							id="RegistrationForm" novalidate="novalidate">
							<p class="required-msg">Please fill out all fields</p>
							<div class="error-form global-error form-row" aria-live="polite"></div>
							<fieldset>
								<legend class="visually-hidden">Personal information</legend>
								<div class="form-row  required form-row-select"
									data-requiredtext="Please enter your greeting"
									data-regexinvalidmessage="" aria-required="true">
									<div class="form-field-wrapper">
										<label class="visually-hidden"
											for="dwfrm_profile_customer_title">Title *</label>
										<div class="form-field">
											<div class="form-select-wrapper">
												<select class="form-select title form-field required"
													id="dwfrm_profile_customer_title" name="cus_title"
													data-dwname="title" title="Title"
													autocomplete="honorific-prefix" aria-required="true">
													<option class="form-selectOption" label="Title" value="">Title
													</option>
													<option class="form-selectOption" label="Mr." value="Mr.">Mr.
													</option>
													<option class="form-selectOption" label="Mrs." value="Mrs.">Mrs.</option>
													<option class="form-selectOption" label="Ms." value="Ms.">Ms.
													</option>
													<option class="form-selectOption" label="-" value="">-
													</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="form-row firstname required empty"
									data-requiredtext="Please enter your first name (A-Z, a-z, dash, apostrophe and space accepted)"
									data-regexinvalidmessage="" aria-required="true">
									<label class="form-label"
										for="dwfrm_profile_customer_firstname_d0rewpwspxep">First
										name *</label>
									<div class="form-field">
										<input class="form-input firstname form-field required"
											type="text"
											id="dwfrm_profile_customer_firstname_d0rewpwspxep"
											name="cus_fname" value="" maxlength="13"
											data-dwname="firstname" autocomplete="given-name"
											aria-required="true">
									</div>
								</div>
								<div class="form-row lastname required empty"
									data-requiredtext="Please enter your last name (A-Z, a-z, dash, apostrophe and space accepted)"
									data-regexinvalidmessage="" aria-required="true">
									<label class="form-label"
										for="dwfrm_profile_customer_lastname_d0jfiuibdzot">Last
										name *</label>
									<div class="form-field">
										<input class="form-input lastname form-field required"
											type="text" id="dwfrm_profile_customer_lastname_d0jfiuibdzot"
											name="cus_lname" value="" maxlength="13"
											data-dwname="lastname" autocomplete="family-name"
											aria-required="true">
									</div>
								</div>

								<div class="form-row form-auto required empty"
									data-requiredtext="Please enter your e-mail address (format: email@domain.fr)"
									data-regexinvalidmessage="" aria-required="true">
									<label class="form-label" for="dwfrm_profile_customer_email">E-mail
										address *</label>
									<div class="form-field">
										<input class="form-input email form-field required"
											type="text" id="dwfrm_profile_customer_email"
											name="cus_email" value="" maxlength="50" data-dwname="email"
											autocomplete="email" aria-required="true"
											aria-invalid="false"
											aria-describedby="dwfrm_profile_customer_email-error"><span
											id="dwfrm_profile_customer_email-error" class="error"></span>
									</div>
								</div>
								<div class="form-row password form-auto required empty"
									data-requiredtext="Please enter your password"
									data-regexinvalidmessage="" aria-required="true">

									<label class="form-label"
										for="dwfrm_login_password_d0vayssxmnwj">Password *</label>
									<div class="form-field">
										<input class="form-input password form-field required"
											type="password" id="password" name="cus_password" value=""
											maxlength="14" data-dwname="password"
											autocomplete="current-password" aria-required="true"
											aria-invalid="false"
											aria-describedby="dwfrm_login_password_d0vayssxmnwj-error">

									</div>
								</div>
								<div class="form-row form-secondaryCheckbox form-customCheckbox"
									data-requiredtext="" data-regexinvalidmessage="">
									<div class="form-field-wrapper">
										<input class="form-checkbox addtoemaillist" type="checkbox"
											id="dwfrm_profile_customer_addtoemaillist"
											name="dwfrm_profile_customer_addtoemaillist" value="true"
											maxlength="2147483647" data-dwname="addtoemaillist"
											autocomplete="off"> <label class="form-label"
											for="dwfrm_profile_customer_addtoemaillist">I Agree </label>
									</div>
								</div>
								<div class="form-row form-row-button">


									<input type="hidden" value="new" name="action" />

									<button type="submit" value="Apply"
										name="dwfrm_profile_confirm">Create an account</button>
								</div>




								<div class="form-row form-row-button">
									<button>Have Account? To Sign In Page</button>
									<!-- 										<div class="content-asset">
											<p class="terms-conditions">
												<a href="#">Privacy  Policy</a> 
											</p>
										</div> -->
								</div>
							</fieldset>
						</form>
					</div>


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
	</main>
</body>

</html>