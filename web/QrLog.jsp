<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2022-10-20
  Time: 오후 7:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="user.UserDAO"%>
<%@ page import ="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class = "user.User" scope = "session" />
<jsp:setProperty name="user" property="student_id" />
<jsp:setProperty name="user" property="password" />

<script src="html5-qrcode.min_.js"></script>
<style>
  .result{
    background-color: green;
    color:#fff;
    padding:20px;
  }
  .row{
    display:flex;
  }
</style>
<div class="row">
  <div class="col">
    <div style="width:500px; text-align: center;border: none; border-radius: 20px; cursor:pointer;" id="reader"> </div>

  </div>
  <div class="col" style="padding:300px;">
<%--    <h4>SCAN RESULT</h4>--%>
<%--    <div id="result">Result Here</div>--%>
  </div>
</div>
<script type="text/javascript">
  function onScanSuccess(qrCodeMessage) {
    // document.getElementById('result').innerHTML = '<span class="result">' + qrCodeMessage + '</span>';
    location.replace(qrCodeMessage);
  }
  function onScanError(errorMessage) {
    //handle scan error
  }
  var html5QrcodeScanner = new Html5QrcodeScanner(
          "reader", { fps: 10, qrbox: 250 });
  html5QrcodeScanner.render(onScanSuccess, onScanError);
</script>