<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import = "java.sql.*" %>     <!-- JSP���� JDBC�� ��ü�� ����ϱ� ���� java.sql ��Ű���� import �Ѵ� -->

<%
Connection conn = null; //�ʱ�ȭ
try{
String url = "jdbc:mysql://localhost:3306/joinlist";      // URL, "jdbc:mysql://localhost:3306/(mySql���� ���� DB��)" << �Է� �̶� 3306�� mysql�⺻ ��Ʈ
String id = "root";         // SQL ����� �̸�
String pw = "vu1408ln";     // SQL ����� �н�����
Class.forName("com.mysql.jdbc.Driver");              // DB�� �����ϱ� ���� DriverManager�� ����Ѵ�.
conn=DriverManager.getConnection(url,id,pw);  

   // sql ����
         // �� �������� LOGIN.jsp input�� �Է��� ������ ������ ��´�
         String user_id= request.getParameter("input_id");
         String user_pw= request.getParameter("input_pw");
         
        Statement st = conn.createStatement();
        // ���� �Է��� id�� pw ���� DB�ȿ� �ִ��� Ȯ���Ѵ�
        
        String sql2 = "select * from joinlist.user where id='" + user_id + "' && pw='" + user_pw + "'";
        st.executeUpdate(sql2);
        ResultSet rs = st.executeQuery(sql2);
        
        // isLogin �� �α��� Ȯ�� ������ ���� ����
        Boolean isLogin = false;
        while(rs.next()) {
            // rs.next�� true ��� = ������ �ִ�
            isLogin = true;
          
           
        }
     
        
        // DB�� ���� ���� ������ �ִٸ�
        if(isLogin) {
            // ���� �α����� id�� pw�� session�� �����ϰ�
            session.setAttribute("id", user_id); 
            session.setAttribute("pw", user_pw);
           
            // ù �������� ����������
            response.sendRedirect("Page_1.jsp");    
       
          
        } 
        else {
            // DB�� �������� ������ ���ٸ� ���â�� ����ش�
            %> <script> alert("�α��� ����"); history.go(-1); </script>
             <%            
        }
       

  // DriverManager ��ü�κ��� Connection ��ü�� ���´�.
out.println("�����");      // Ŀ�ؼ��� ����� ����Ǹ� ����ȴ�.
}catch(Exception e){     // ���� ó��
e.printStackTrace();
}
%>