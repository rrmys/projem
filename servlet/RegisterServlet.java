@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn = DBUtil.getConnection();
    PreparedStatement ps = conn.prepareStatement("INSERT INTO users (username, email, password) VALUES (?, ?, ?)");
    ps.setString(1, username);
    ps.setString(2, email);
    ps.setString(3, password); // Gerçek projede hash'lenmeli
    ps.executeUpdate();

    response.sendRedirect("login.jsp");
  }
}