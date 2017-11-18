<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import = "java.sql.*" %>     <!-- JSP에서 JDBC의 객체를 사용하기 위해 java.sql 패키지를 import 한다 -->

<%
Connection conn = null; //초기화
try{
String url = "jdbc:mysql://localhost:3306/joinlist";      // URL, "jdbc:mysql://localhost:3306/(mySql에서 만든 DB명)" << 입력 이때 3306은 mysql기본 포트
String id = "root";         // SQL 사용자 이름
String pw = "vu1408ln";     // SQL 사용자 패스워드
Class.forName("com.mysql.jdbc.Driver");              // DB와 연동하기 위해 DriverManager에 등록한다.
conn=DriverManager.getConnection(url,id,pw);  

   // sql 구사
         // 전 페이지인 LOGIN.jsp input에 입력한 값들을 변수에 담는다
         String user_id= request.getParameter("input_id");
         String user_pw= request.getParameter("input_pw");
         
        Statement st = conn.createStatement();
        // 내가 입려한 id와 pw 값이 DB안에 있는지 확인한다
        
        String sql2 = "select * from joinlist.user where id='" + user_id + "' && pw='" + user_pw + "'";
        st.executeUpdate(sql2);
        ResultSet rs = st.executeQuery(sql2);
        
        // isLogin 은 로그인 확인 유무를 위한 변수
        Boolean isLogin = false;
        while(rs.next()) {
            // rs.next가 true 라면 = 정보가 있다
            isLogin = true;
          
           
        }
     
        
        // DB에 내가 적은 정보가 있다면
        if(isLogin) {
            // 지금 로그인할 id와 pw를 session에 저장하고
            session.setAttribute("id", user_id); 
            session.setAttribute("pw", user_pw);
           
            // 첫 페이지로 돌려보낸다
            response.sendRedirect("Page_1.jsp");    
       
          
        } 
        else {
            // DB에 내가적은 정보가 없다면 경고창을 띄워준다
            %> <script> alert("로그인 실패"); history.go(-1); </script>
             <%            
        }
       

  // DriverManager 객체로부터 Connection 객체를 얻어온다.
out.println("연결됨");      // 커넥션이 제대로 연결되면 수행된다.
}catch(Exception e){     // 예외 처리
e.printStackTrace();
}
%>