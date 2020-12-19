<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<main id="main" class="page-content clearfix"
		style="margin-top: 128px;">
		<a id="mainContent" tabindex="-1"></a>
		<div class="cart-live-region" aria-live="polite" role="status">
		</div>
		<div class="container">
			<nav class="account-navigation" aria-label="My account">
				<ul>
					<li class=""><a
						href="${pageContext.request.contextPath}/views/web/accountoverview.jsp">
							Account overview </a></li>
					<li class="order-history "><a
						href="${pageContext.request.contextPath}/views/web/order.jsp">
							Orders </a></li>
					<li class=""><a
						href="${pageContext.request.contextPath}/user-update?action=show"
						title="Personal details (Active page)"> Personal details </a></li>
					<li><a
						href="${pageContext.request.contextPath}/login?action=logout">Logout</a>
				</ul>
			</nav>
		</div>
		<div id="primary" class="primary-content">
			<div class="orders-history">
				<div class="page-header">
					<h1>
						<span class="subtitle">My account</span> <span class="title">Orders</span>
					</h1>
				</div>
				<div class="container no-orders">No order at this time</div>
				<div class="container" wfd-id="73">
					<div class="customer_order customer-table-bg" wfd-id="74">

						<p class="title-detail">Danh sách đơn hàng mới nhất</p>
						<div class="table-responsive" wfd-id="75">
							<table class="table" style="width: 100%; background: #fff;">
								<thead>
									<tr>
										<th class="order_number text-center">Mã đơn hàng</th>
										<th class="date text-center">Ngày đặt</th>
										<th class="total text-right">Thành tiền</th>
										<th class="payment_status text-center">Trạng thái thanh
											toán</th>
										<th class="fulfillment_status text-center">Vận chuyển</th>

									</tr>
								</thead>
								<tbody style="border-top: 1px solid #757575;">

									<tr class="odd "
										style="text-align: center; border-bottom: solid;">
										<td class="text-center"><a
											href="/account/orders/01bce7b43b8c49f2a931b1f2dff8ac7b"
											title="">#hd340441</a></td>

										<td class="text-center"><span wfd-id="79">17/12/2020</span></td>
										<td class="text-right"><span class="total money"
											wfd-id="78">810,000₫</span></td>
										<td class="text-center"><span class="status_pending"
											wfd-id="77">pending</span></td>
										<td class="text-center"><span
											class="status_not fulfilled" wfd-id="76">not fulfilled</span></td>

									</tr>

								</tbody>
							</table>


						</div>
					</div>
				</div>

				<div class="container" wfd-id="71">
					<div class="line-item" wfd-id="89">
						<a href="/account" id="return_to_store">Quay lại trang tài
							khoản </a>
					</div>
					<div class="" wfd-id="84" style="width: 100%;">
						<div class="customer-table-bg" wfd-id="85">
							<p class="title-detail" style="margin-left: 8%;">Chi tiết đơn
								hàng</p>
							<div class="table-responsive" wfd-id="86">
								<table id="order_details" class="table tableOrder"
									style="width: 100%;">
									<tbody style="text-align: center;">
										<tr height="40px" style="width: 25px;">
											<th class="" style="">Sản phẩm</th>
											<th class="text-center" style="">Mã sản phẩm</th>
											<th class="text-center">Đơn giá</th>
											<th class="text-center">Số lượng</th>
											<th class="total text-right">Thành tiền</th>
										</tr>

										<tr height="40px" id="0" class="odd"
											style="text-align: center;">
											<td class="" style="max-width: 300px"><a
												href="/products/hatred-wash-tee" title="">HATRED WASH
													TEE</a> <br> <span class="variant_acc" wfd-id="88">

													XANH / S </span></td>
											<td class="sku text-center">HTWT00-1</td>
											<td class="money text-center">420,000₫</td>
											<td class="quantity center text-center">1</td>
											<td class="total money text-right">420,000₫</td>
										</tr>

										<tr height="40px" id="0" class="even">
											<td class="" style="max-width: 300px"><a
												href="/products/hatred-black-tee" title="">HATRED BLACK
													TEE</a> <br> <span class="variant_acc" wfd-id="87">

													S </span></td>
											<td class="sku text-center">HTBT00-1</td>
											<td class="money text-center">350,000₫</td>
											<td class="quantity center text-center">1</td>
											<td class="total money text-right">350,000₫</td>
										</tr>

										<tr height="40px" class="order_summary">
											<td class="text-right" colspan="4"><b>Giá sản phẩm</b></td>
											<td class="total money text-right"><b>770,000₫</b></td>
										</tr>


										<tr height="40px" class="order_summary ">
											<td class="text-right" colspan="4"><b>Giao hàng tiêu
													chuẩn</b></td>
											<td class="total money text-right"><b>40,000₫</b></td>
										</tr>




										<tr height="40px" class="order_summary order_total">
											<td class="text-right" colspan="4"><b>Tổng tiền</b></td>
											<td class="total money text-right"><b>810,000₫ </b></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
					<div class="col-md-12 col-sm-12 col-xs-12 content-page" wfd-id="72">
						<div class="row" wfd-id="73">
							<div id="order_payment" class="col-md-6 col-sm-6" wfd-id="79">
								<h3 class="order_section_title">Địa chỉ nhận thanh toán</h3>
								<div class="alert alert-info" wfd-id="81">
									<span class="text_status" wfd-id="83">Tình trạng thanh
										toán:</span> <span class="status_pending" wfd-id="82">pending</span>
								</div>
								<div class="address" wfd-id="80">
									<p class="adressName ">John Holl</p>
									<p></p>
									<p>1233 Belvilahil</p>
									<p></p>
									<p>Đà Nẵng</p>
									<p>Vietnam</p>
									<p>0944522229</p>


								</div>

							</div>

							<div id="order_shipping" class="col-md-6 col-sm-6" wfd-id="74">

								<h3 class="order_section_title">Địa chỉ gửi hàng</h3>
								<div class="alert alert-info" wfd-id="76">
									<span class="text_status" wfd-id="78">Vận chuyển:</span> <span
										class="status_not fulfilled" wfd-id="77">not fulfilled</span>
								</div>
								<div class="address" wfd-id="75">
									<p class="adressName ">John Holl</p>
									<p></p>
									<p>1233 Belvilahil</p>
									<p></p>
									<p>Đà Nẵng</p>
									<p>Vietnam</p>
									<p>0944522229</p>
								</div>

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
	</main>
</body>
