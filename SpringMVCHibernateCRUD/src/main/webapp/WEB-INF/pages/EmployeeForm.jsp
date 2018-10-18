<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Contact</title>
</head>
<body>
    <div align="center">
        <h1>New/Edit Employee</h1>
        <form:form action="saveEmployee" method="post" modelAttribute="employee">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>FirstName:</td>
                <td><form:input path="fname" /></td>
            </tr>
            <tr>
                <td>LastName:</td>
                <td><form:input path="lname" /></td>
            </tr>
            
            <tr>
                <td>Email:</td>
                <td><form:input path="email" /></td>
            </tr>
				<tr>
					<td>City:</td>
					<td><form:select path="city">
							<form:option value="select">---select---</form:option>
							<form:option value="Pune">Pune</form:option>
							<form:option value="Mumbai">Mumbai</form:option>
							<form:option value="Chennai">Chennai</form:option>
							<form:option value="Noida">Noida</form:option>
							<form:option value="Indore">Indore</form:option>
							<form:option value="Aurangabad">Aurangabad</form:option>
							<%-- <form:options items="${cityList}" /> --%>
						</form:select></td>
					<td style="color: red; font-style: italic;"><form:errors
							path="city" /></td>
							</tr><%-- 
				<tr>
                <td>Address:</td>
                <td><form:input path="address" /></td>
            </tr> --%>
            <tr>
                <td>Telephone:</td>
                <td><form:input path="telephone" /></td>
            </tr>
            <tr>
            <td>Gender:</td>  
     <td><form:radiobutton path="gender" value="Male" /> Male  
        <form:radiobutton path="gender" value="Female" /> Female</td>  
     <td style="color: red; font-style: italic;"><form:errors  
       path="gender" />  
            </tr>
            <tr>  <select id="submitbutton">
                <td colspan="2" align="center">
                <td><!-- <input type="button" id="submit" value="Save"></td> -->
                 <input type="submit" id="submitbutton" value="Save"></td>
                 <!-- <select id="submit"> --></select>
                
                
                
                <%-- <button onclick="showPopupWindow(); setAttributes(${question.id}, 0)">Reply</button>
                        </br>
                        <button onclick="showPopupWindow(); setAttributes(${question.id}, 1)">Change</button>
                        </br>
                        <button windowCase = 2">Delete</button>
                        </br> --%>
            </tr>
        </table>
        </form:form>
    </div>
    <script type="text/javascript">
    	$(document).change(function(){
    		$('#submitbutton').on('click',function(){
    			var msg="Registerd successfully";
    			alert(msg);
    		});
    	});
    
    </script>
</body>
</html>