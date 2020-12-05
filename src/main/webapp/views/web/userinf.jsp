<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<body>
	<div class="pt_storefront" id="wrapper">
		<div id="minicart-container" aria-hidden="true"></div>
		<main id="main" class="page-content clearfix"
			style="margin-top: 128px;">
			<a id="mainContent" tabindex="-1"></a>
			<div class="cart-live-region" aria-live="polite" role="status">
			</div>
			<div class="container">
				<nav class="account-navigation" aria-label="My account">
					<ul>
						<li class=""><a href="#"> Account overview </a></li>
						<li class="order-history "><a href="#"> Orders </a></li>
						<li class="active"><a
							href="${pageContext.request.contextPath}/views/web/userinf.jsp"
							title="Personal details (Active page)"> Personal details </a></li>
						<li><a
							href="${pageContext.request.contextPath}/login?action=logout">Logout</a>
					</ul>
				</nav>
			</div>
			<div id="primary" class="primary-content">
				<div class="registration container">
					<div class="page-header">
						<h1>
							<span class="subtitle">Modify account</span> <span class="title">Personal
								details</span>
						</h1>
					</div>
					<div class="row">
						<div class="col-xs-6 col-sm-offset-3">
							<form action="#update" method="post"
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
														name="dwfrm_profile_customer_title" data-dwname="title"
														title="Title" autocomplete="honorific-prefix"
														aria-required="true" aria-invalid="false"
														aria-describedby="dwfrm_profile_customer_title-error"><option
															class="form-selectOption" label="Title" value="">Title</option>
														<option class="form-selectOption" label="Mr." value="010"
															selected="selected">Mr.</option>
														<option class="form-selectOption" label="Mrs." value="020">Mrs.</option>
														<option class="form-selectOption" label="Ms." value="040">Ms.</option>
														<option class="form-selectOption" label="-" value="160">-</option></select><span
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
												name="dwfrm_profile_customer_firstname_d0hhfdpzzeru"
												value="Bindingdb" maxlength="13" data-dwname="firstname"
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
												name="dwfrm_profile_customer_lastname_d0nvjfwfdkjp"
												value="Bindingdb" maxlength="13" data-dwname="lastname"
												autocomplete="family-name" aria-required="true">
										</div>

									</div>

									<div class="form-row lastname required empty"
										data-requiredtext="Please enter your last name (A-Z, a-z, dash, apostrophe and space accepted)"
										data-regexinvalidmessage="" aria-required="true">

										<label class="form-label"
											for="dwfrm_profile_customer_lastname_d0nvjfwfdkjp">Address
											*</label>
										<div class="form-field">
											<input class="form-input lastname form-field required"
												type="text"
												id="dwfrm_profile_customer_lastname_d0nvjfwfdkjp"
												name="dwfrm_profile_customer_lastname_d0nvjfwfdkjp" value=""
												maxlength="13" data-dwname="lastname"
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
															name="dwfrm_profile_customer_daybirthday"
															data-dwname="daybirthday" autocomplete="bday-day"
															aria-label="Birthday Day"><option
																class="form-selectOption" label="Day" value="">Day</option>
															<option class="form-selectOption" label="01" value="01">01</option>
															<option class="form-selectOption" label="02" value="02">02</option>
															<option class="form-selectOption" label="03" value="03">03</option>
															<option class="form-selectOption" label="04" value="04">04</option>
															<option class="form-selectOption" label="05" value="05">05</option>
															<option class="form-selectOption" label="06" value="06">06</option>
															<option class="form-selectOption" label="07" value="07">07</option>
															<option class="form-selectOption" label="08" value="08">08</option>
															<option class="form-selectOption" label="09" value="09">09</option>
															<option class="form-selectOption" label="10" value="10">10</option>
															<option class="form-selectOption" label="11" value="11">11</option>
															<option class="form-selectOption" label="12" value="12">12</option>
															<option class="form-selectOption" label="13" value="13">13</option>
															<option class="form-selectOption" label="14" value="14">14</option>
															<option class="form-selectOption" label="15" value="15">15</option>
															<option class="form-selectOption" label="16" value="16">16</option>
															<option class="form-selectOption" label="17" value="17">17</option>
															<option class="form-selectOption" label="18" value="18">18</option>
															<option class="form-selectOption" label="19" value="19">19</option>
															<option class="form-selectOption" label="20" value="20">20</option>
															<option class="form-selectOption" label="21" value="21">21</option>
															<option class="form-selectOption" label="22" value="22">22</option>
															<option class="form-selectOption" label="23" value="23">23</option>
															<option class="form-selectOption" label="24" value="24">24</option>
															<option class="form-selectOption" label="25" value="25">25</option>
															<option class="form-selectOption" label="26" value="26">26</option>
															<option class="form-selectOption" label="27" value="27">27</option>
															<option class="form-selectOption" label="28" value="28">28</option>
															<option class="form-selectOption" label="29" value="29">29</option>
															<option class="form-selectOption" label="30" value="30">30</option>
															<option class="form-selectOption" label="31" value="31">31</option></select>
													</div>
												</div>
											</div>
										</div>
			<!-- test -->
										<div class="form-row  form-row-select" data-requiredtext=""
											data-regexinvalidmessage="">
											<div class="form-field-wrapper">
												<label class="visually-hidden"
													for="dwfrm_profile_customer_yearbirthday">Year</label>
												<div class="form-field">
													<div class="form-select-wrapper">
														<select class="form-select yearbirthday"
															id="dwfrm_profile_customer_yearbirthday"
															name="dwfrm_profile_customer_yearbirthday"
															data-dwname="yearbirthday" autocomplete="bday-month"
															aria-label="Year"><option
																class="form-selectOption" label="Year " value="">Year</option>
															<option class="form-selectOption" label="01" value="01">01</option>
														</select>
													</div>
												</div>
											</div>
										</div>
								
										<!-- end test -->
										<div class="form-row  form-row-select" data-requiredtext=""
											data-regexinvalidmessage="">
											<div class="form-field-wrapper">
												<label class="visually-hidden"
													for="dwfrm_profile_customer_monthbirthday">Month</label>
												<div class="form-field">
													<div class="form-select-wrapper">
														<select class="form-select monthbirthday"
															id="dwfrm_profile_customer_monthbirthday"
															name="dwfrm_profile_customer_monthbirthday"
															data-dwname="monthbirthday" autocomplete="bday-month"
															aria-label="Month"><option
																class="form-selectOption" label="Month" value="">Month</option>
															<option class="form-selectOption" label="01" value="01">01</option>
															<option class="form-selectOption" label="02" value="02">02</option>
															<option class="form-selectOption" label="03" value="03">03</option>
															<option class="form-selectOption" label="04" value="04">04</option>
															<option class="form-selectOption" label="05" value="05">05</option>
															<option class="form-selectOption" label="06" value="06">06</option>
															<option class="form-selectOption" label="07" value="07">07</option>
															<option class="form-selectOption" label="08" value="08">08</option>
															<option class="form-selectOption" label="09" value="09">09</option>
															<option class="form-selectOption" label="10" value="10">10</option>
															<option class="form-selectOption" label="11" value="11">11</option>
															<option class="form-selectOption" label="12" value="12">12</option></select>
													</div>
												</div>
											</div>
										</div>
							
									</div>
									<div class="form-row required"
										data-requiredtext="Please enter your e-mail address (format: email@domain.fr)"
										data-regexinvalidmessage="" aria-required="true">

										<label class="form-label" for="dwfrm_profile_customer_email">E-mail
											address *</label>
										<div class="form-field">
											<input class="form-input email form-field required"
												type="text" id="dwfrm_profile_customer_email"
												name="dwfrm_profile_customer_email" value="Bindingdb"
												maxlength="50" data-dwname="email" disabled="disabled"
												aria-required="true">
										</div>
									</div>

									<div class="form-row form-row-button">
										<button type="submit" value="Apply"
											name="dwfrm_profile_confirm">Save changes</button>
									</div>
									<div class="form-row form-row-button">
										<button type="button" class="delete-account"
											value="Delete account" name="dwfrm_profile_deleteaccount">
											Delete account</button>
									</div>
									<input type="hidden" name="csrf_token"
										value="9XUU1TjvOU4T2eO-e2SeXR0o6_El58rbAcbgBNWnn9Sp1in9VyWfLs80TdgPLw-BbXiB6jB0k0VCvTPvQzAVvdevwUFlKlok5A32upDSX0h7s3Ow3cBNTrcynU0-PLtxHgowDzi2nCt0dSeO6DYWoAzfLeYJ36SXlr1pdbRLD5kDNS8hgIU=">
									<div class="form-row">
										<div class="content-asset">
											<!-- 											<p class="terms-conditions">GIVENCHY processes the data
												collected above to create your account, process your order
												and ensure a personalized customer relationship. Unless
												otherwise noted, all fields are mandatory in order to
												process your request. If you wish to be informed of GIVENCHY
												news by telephone or SMS/MMS, tick the boxes under “My
												contact preferences.” In any event, you have the right to to
												access, amend, delete or object to the processing of your
												personal data. You may exercise this right by writing to
												contact.us@givenchy.com.</p> -->
										</div>
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
												name="dwfrm_profile_login_currentpassword_d0sdvmecjlfo"
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
												name="dwfrm_profile_login_newpassword_d0pafajawcoo" value=""
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
												name="dwfrm_profile_login_newpasswordconfirm_d0xqdsptjeuw"
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


	</div>

</body>

</html>