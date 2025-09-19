@WebServlet("/ArticleServlet")
public class ArticleServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String action = request.getParameter("action");
    int userId = (int) request.getSession().getAttribute("userId");

    if ("create".equals(action)) {
      String title = request.getParameter("title");
      String content = request.getParameter("content");

      Connection conn = DBUtil.getConnection();
      PreparedStatement ps = conn.prepareStatement("INSERT INTO articles (user_id, title, content, views) VALUES (?, ?, ?, 0)");
      ps.setInt(1, userId);
      ps.setString(2, title);
      ps.setString(3, content);
      ps.executeUpdate();
    }

    // update, delete işlemleri benzer şekilde yapılır

    response.sendRedirect("articleList.jsp");
  }
}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  int articleId = Integer.parseInt(request.getParameter("id"));

  Connection conn = DBUtil.getConnection();
  PreparedStatement ps = conn.prepareStatement("UPDATE articles SET views = views + 1 WHERE id=?");
  ps.setInt(1, articleId);
  ps.executeUpdate();

  // Makale detaylarını çek ve JSP'ye yönlendir
  ps = conn.prepareStatement("SELECT * FROM articles WHERE id=?");
  ps.setInt(1, articleId);
  ResultSet rs = ps.executeQuery();

  if (rs.next()) {
    request.setAttribute("article", rs);
    RequestDispatcher rd = request.getRequestDispatcher("articleDetail.jsp");
    rd.forward(request, response);
  }
}