<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> JoinCheck </title>
</head>
<body>
 
    <%
        // JOIN.jsp input ���� �Է��� ȸ�����Կ� �ʿ��� ������ ������ ����ش�
        String his_id     = request.getParameter("JOIN_id");
        String his_pw     = request.getParameter("JOIN_pw");
       // String his_hobby= request.getParameter("JOIN_hobby");
        
        try {
            // ����̹� �ε�
            String driver = "com.mysql.jdbc.Driver";
        Class.forName(driver);
            // ������ Login
          String url = "jdbc:mysql://localhost:3306/joinlist";
        String id = "root";
        String pw = "vu1408ln";
            // ����
            // INSERT �ش޶� USERTABLE�� 
            // id, pw, hobby ��� �ʵ带 ����
            Connection conn = DriverManager.getConnection(url, id, pw);
            Statement st = conn.createStatement();
            String sql = "insert into user values ('" + his_id + 
                    "','" + his_pw + "')";
            st.executeUpdate(sql);
            
            // ȸ�����Կ� �����Ͽ����� ù �������� ������
            response.sendRedirect("Page_1.jsp");        
            
        } catch (Exception e) {       
            out.println("DB ���� ����");
        }    
    %>
 
</body>
</html>
 
