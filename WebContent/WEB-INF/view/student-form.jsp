<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

	<head>
	<title>Student Registration Form</title>
	</head>
	<body>
		
		<form:form action="processForm" modelAttribute="student">
			First name: <form:input path="firstName" />
			<br><br>
			Last name: <form:input path="lastName" />
			<br><br>
			Country:
			<form:select path="country">
				<form:options items="${student.countryOptions }" />

			</form:select>
			<br><br>
			Favorite Language:
			Java <form:radiobutton path="favoriteLanguage" value="Java"/>
			Python <form:radiobutton path="favoriteLanguage" value="Python"/>
			JavaScript <form:radiobutton path="favoriteLanguage" value="JavaScript"/>
			C <form:radiobutton path="favoriteLanguage" value="C"/>
			<br><br>
			Operating Systems:
			Linux <form:checkbox path="operatingSystems" value="Linux" />
			Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
			MS Windows <form:checkbox path="operatingSystems" value="MS Windows" />
			<br><br>
			<input type="submit" value="Submit" />
		</form:form>
	</body>

</html>