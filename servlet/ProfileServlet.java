@WebServlet("/ProfileServlet")
@MultipartConfig
public class ProfileServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Part filePart = request.getPart("profileImage");
    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
    String uploadPath = getServletContext().getRealPath("") + "images/uploads/" + fileName;

    filePart.write(uploadPath);

    int userId = (int) request.getSession().getAttribute("userId");
    Connection conn = DBUtil.getConnection();
    PreparedStatement ps = conn.prepareStatement("UPDATE users SET profile_image=? WHERE id=?");
    ps.setString(1, fileName);
    ps.setInt(2, userId);
    ps.executeUpdate();

    response.sendRedirect("editProfile.jsp");
  }
}