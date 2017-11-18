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
        // JOIN.jsp input 에서 입력한 회원가입에 필요한 값들을 변수에 담아준다
        String his_id     = request.getParameter("JOIN_id");
        String his_pw     = request.getParameter("JOIN_pw");
       // String his_hobby= request.getParameter("JOIN_hobby");
        
        try {
            // 드라이버 로딩
            String driver = "com.mysql.jdbc.Driver";
        Class.forName(driver);
            // 관리자 Login
          String url = "jdbc:mysql://localhost:3306/joinlist";
        String id = "root";
        String pw = "vu1408ln";
            // 연결
            // INSERT 해달라 USERTABLE에 
            // id, pw, hobby 라는 필드를 가진
            Connection conn = DriverManager.getConnection(url, id, pw);
            Statement st = conn.createStatement();
            String sql = "insert into user values ('" + his_id + 
                    "','" + his_pw + "')";
            st.executeUpdate(sql);
            
            // 회원가입에 성공하였으면 첫 페이지로 보낸다
            response.sendRedirect("Page_1.jsp");        
            
        } catch (Exception e) {       
            out.println("DB 연동 실패");
        }    
    %>
 
</body>
</html>
 
