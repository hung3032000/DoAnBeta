<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp"%>	
<body>
	<div class="pt_storefront" id="wrapper">
		<div id="minicart-container" aria-hidden="true"></div>
		<main id="main" class="page-content clearfix"
			style="margin-top: 128px;">
			<a id="mainContent" tabindex="-1"></a>
			<div id="primary" class="primary-content">
				<div class="login-page container">
					<c:if test="${not empty ready}">
						<div class="account-edit-success">
						<i class="icon_CheckMark">
						</i> <span role="alert"> ${message2} </span>
					</div>
					</c:if>
					
					
					
					<div class="page-header">
						<h1>
							<span class="subtitle">My account</span> <span class="title">Login</span>
						</h1>
					</div>
					<div class="row">
						<div class="col-xs-6">
							<div class="login-box">

								<h2>Homie Family Member</h2>
								<p class="intro">If you are already a Homie Family member,
									please enter your login information.</p>
									<c:if test="${not empty message}">
										<div class="error">${message}</div>
									</c:if>
								<form action="${pageContext.request.contextPath}/login"
									method="post" class="clearfix " id="dwfrm_login"
									name="login-form" novalidate="novalidate">
									<fieldset>
										<legend class="visually-hidden">Login</legend>
										<div class="form-row username form-auto required empty"
											data-requiredtext="Please enter your e-mail address <span class=&quot;format>(format: email@domain.fr)</span>"
											data-regexinvalidmessage="" aria-required="true">

											<label class="form-label"
												for="dwfrm_login_username_d0ortigqzqbr">E-mail
												address *</label>
											<div class="form-field">
												<input class="form-input username form-field required"
													type="text" id="email" name="email" value="" maxlength="50"
													data-dwname="username" autocomplete="email"
													aria-required="true" aria-invalid="false"
													aria-describedby="dwfrm_login_username_d0ortigqzqbr-error">

											</div>

										</div>
										<div class="form-row password form-auto required empty"
											data-requiredtext="Please enter your password"
											data-regexinvalidmessage="" aria-required="true">

											<label class="form-label"
												for="dwfrm_login_password_d0vayssxmnwj">Password *</label>
											<div class="form-field">
												<input class="form-input password form-field required"
													type="password" id="password" name="password" value=""
													maxlength="14">
											</div>
										</div>
										<div class="form-row form-row-button">
											<input type="hidden" value="login" name="action" />
											<button type="submit" class="form-button" value="Login"
												name="dwfrm_login_login">Login</button>
										</div>
										<div class="login-actions">
											<div class="form-row form-customCheckbox remember-me">
												<input type="checkbox" id="remember-me"
													class="form-checkbox"> <label for="remember-me"
													class="form-label">Remember me</label> <input
													class=" rememberme" type="hidden"
													id="dwfrm_login_rememberme" name="dwfrm_login_rememberme"
													value="true" data-dwname="rememberme">
											</div>
											<a class="password-reset" href="#"> Forgotten password? </a>
										</div>
									</fieldset>
								</form>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="register-box">
								<h2>New member</h2>
								<p class="intro">Create your personal account to join our
									Homie family.</p>
								<form
									action="${pageContext.request.contextPath}/user-new"
									class="form-row" method="get" id="dwfrm_login_register"
									novalidate="novalidate">
									<button type="submit" value="Create an account"
										name="dwfrm_login_register">Create an account</button>
								</form>
								<div class="create-account-benefits">
									<h3>Benefits</h3>
									<div class="content-asset">
										<p class="title">Wishlist</p>
										<p class="text">Create a wish list and share it with loved
											ones or in-store consultants</p>
										<p class="title">Customization</p>
										<p class="text">Take advantage of suggestions for
											customized products and exclusive content</p>
										<p class="title">Preferences</p>
										<p class="text">Manage your newsletter subscription
											preferences</p>
										<p class="title">Personal details</p>
										<p class="text">Update your personal information</p>
									</div>
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
				</div>
				</div>
		</main>
	</div>
</body>