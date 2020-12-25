
package ute.DoAn1.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.constant.SystemConstant;
import ute.DoAn1.model.UserModel;
import ute.DoAn1.utils.SessionUtil;

public class AuthorizationFilter implements Filter {

	@SuppressWarnings("unused")
	private ServletContext context;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		String url = request.getRequestURI();
		UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
		if (url.startsWith(request.getContextPath() + "/admin")) {
			if (model != null) {
				if (model.getRole().getCode().equals(SystemConstant.ADMIN)) {
					filterChain.doFilter(servletRequest, servletResponse);
				} else if (model.getRole().getCode().equals(SystemConstant.USER)) {
					response.sendRedirect(
							request.getContextPath() + "/login?action=login&message=not_permission&alert=error");
				}
			} else {
				response.sendRedirect(request.getContextPath() + "/login?action=login&message=not_login&alert=error");
			}
		}

		else if (url.startsWith(request.getContextPath() + "/user-checkout")) {
			if (model == null) {
				response.sendRedirect(request.getContextPath() + "/login?action=login&message=not_login&alert=error");
			} else {
				filterChain.doFilter(servletRequest, servletResponse);
			}
		}

		else {
			filterChain.doFilter(servletRequest, servletResponse);
		}
	}

	@Override
	public void destroy() {

	}

}
