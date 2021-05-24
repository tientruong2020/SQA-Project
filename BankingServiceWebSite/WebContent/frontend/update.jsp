<%-- 
    Document   : update
    Created on : May 14, 2021, 1:12:06 PM
    Author     : thuan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.banking.entity.HDVay"%>
<%@page import="com.banking.dao.HDVaydao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    HDVaydao dao = new HDVaydao();
    ArrayList<HDVay> st = dao.getHDVaybyID(id);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa HD</title>
    </head>
    <<body>
        <jsp:include page="header.jsp"></jsp:include>
        <h1>Giao diện sửa hợp đồng</h1>
        <form name="capnhat" action="doUpdate.jsp" onsubmit="return check()" method="post">
            <table>
                <tr>
                    <td>ID<a style="color: red;">(*)</a></td>
                    <td>
                        <input value="<%=st.get(0).getid() %>" type="text" name="ID" style="background-color: grey;" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Gói Vay<a style="color: red;">(*)</a></td>
                    <td>
                        <input type="radio" name="goivay" value="1" <%=st.get(0).getGoivayID() == 1?"checked":""%>>Lãi suất dư nợ
                        <input type="radio" name="goivay" value="2" <%=st.get(0).getGoivayID() == 2?"checked":""%>>Lãi suất cố định
                        
                    </td>
                </tr>
                <tr>
                    <td>User ID<a style="color: red;">(*)</a></td>
                    <td>
                        <input value="<%=st.get(0).getUserID() %>" type="text" name="userID">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <label for="ngayvay">Ngày Vay: <a style="color: red;">(*)</a></label>
                    <input value="<%=st.get(0).getNgayvay() %>" type="date" id="ngayvay" name="ngayvay">
                    
                </tr>
                <tr>
                <td>Kì Hạn<a style="color: red;">(*)</a></td>
                    <td>
                        <input type="radio" name="kiHan" value="1 thang" <% if(st.get(0).getkiHan().equalsIgnoreCase("1 thang")) { %> checked <% } %>>1 tháng
                        <input type="radio" name="kiHan" value="3 thang" <% if(st.get(0).getkiHan().equalsIgnoreCase("3 thang")) { %> checked <% } %>>3 tháng
                        <input type="radio" name="kiHan" value="6 thang" <% if(st.get(0).getkiHan().equalsIgnoreCase("6 thang")) { %> checked <% } %>>6 tháng 
                        <input type="radio" name="kiHan" value="12 thang" <% if(st.get(0).getkiHan().equalsIgnoreCase("12 thang")) { %> checked <% } %>>12 tháng
                    </td>
                </tr>
                <tr>
                <td>Trạng thái<a style="color: red;">(*)</a></td>
                    <td>
                        <input type="radio" name="trangthai" value="chua duyet" <% if(st.get(0).getTrangthai().equalsIgnoreCase("chua duyet")) { %> checked <% } %>>Chưa duyệt
                        <input type="radio" name="trangthai" value="da duyet" <% if(st.get(0).getTrangthai().equalsIgnoreCase("da duyet")) { %> checked <% } %>>Đã duyệt                        
                    </td>
                </tr>
                <tr>
                    <td>Tiền vay<a style="color: red;">(*)</a></td>
                    <td>
                        <input value="<%=st.get(0).getTienVay() %>" type="text" name="tienvay">
                    </td>
                </tr>
                <tr>
                    <td>Tờ khai ID<a style="color: red;">(*)</a></td>
                    <td>
                        <input value="<%=st.get(0).gettokhaiID() %>" type="text" name="tokhaiID" style="background-color: grey;" readonly>
                    </td>
                </tr>
                    
                    <td><input type="submit" value="Cập nhật"></td>
                </tr>
            </table>
                
        </form>
            <div style='margin-top: 20px'>
		<a href="xemHD.jsp"><button>Quay lại</button></a>
	</div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
