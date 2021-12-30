<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<div id="navbar" class="navbar navbar-default          ace-save-state">
	<div class="navbar-container ace-save-state" id="navbar-container">
		<div class="navbar-header pull-left">
			<a href="#" class="navbar-brand">
			 <small> <i class="fa fa-leaf"></i> 
			 Trang quản trị
			</small>
			</a>
		</div>

		<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav" style="">
			
				

						<li class="green dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false">
								<i class="ace-icon fa fa-envelope"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close" style="">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									5 Messages
								</li>

								<li class="dropdown-content ace-scroll" style="position: relative;"><div class="scroll-track" style="display: none;"><div class="scroll-bar"></div></div><div class="scroll-content" style="">
									
								</li>

								<li class="dropdown-footer">
									<a href="inbox.html">
										See all messages
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>
                  <li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src=" <c:url value ="/template/admin/assets/avatars/anhdaidien.jpg"/>">
								<span class="user-info">
									<small>Welcome, Cường</small>
									
								</span>

								
							</a>

						</li>
					</ul>
				</div>
	</div>
	<!-- /.navbar-container -->
</div>