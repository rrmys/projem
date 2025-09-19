@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn = DBUtil.getConnection();
    PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
    ps.setString(1, email);
    ps.setString(2, password);
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
      HttpSession session = request.getSession();
      session.setAttribute("userId", rs.getInt("id"));
      response.sendRedirect("dashboard.jsp");
    } else {
      response.sendRedirect("login.jsp?error=true");
    }
  }
}