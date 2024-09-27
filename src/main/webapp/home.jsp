<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eleve Information</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="nav-container">
            <a href="/" class="nav-link">Home</a>
            <a href="/eleves" class="nav-link">View All</a>
            <a href="/" class="nav-link">Add</a>
            <a href="/filiere" class="nav-link">Add Filiere</a>
        </div>
    </nav>

    <div class="form-container">
        <form action="/saveEleve" method="post" modelAttribute="eleve">
            <h2>Add Student Information</h2>
            <div class="form-group">
                <label for="nameEleve">Name:</label>
                <input type="text" id="nameEleve" name="nameEleve" required>
            </div>
            <div class="form-group">
                <label for="addressEleve">Address:</label>
                <input type="text" id="addressEleve" name="addressEleve" required>
            </div>

            <div class="form-group">
                <label for="filiere" class="form-label">Department</label>
                <select class="form-select" id="filiere" name="filiere">
                    <option value="" disabled selected>Select a department</option>
                    <c:forEach var="fil" items="${filiereList}">
                        <option value="${fil.idFiliere}">${fil.idFiliere}- ${fil.nomFiliere}</option>
                    </c:forEach>
                </select>
            </div>


            <div class="form-group">
                <button type="submit" class="btn">Save Student</button>
            </div>
        </form>
    </div>

</body>
</html>
