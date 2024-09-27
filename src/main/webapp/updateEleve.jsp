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
            <a href="/home.jsp" class="nav-link">Add</a>
        </div>
    </nav>

    <div class="form-container">
        <form action="/updateEleve"  modelAttribute="eleve">
            <h2>Update Eleve Information</h2>
            <div class="form-group">
                <label for="idEleve">Name:</label>
                <input type="text" id="idEleve" name="idEleve" value="${myEleve.idEleve}" readonly required>
            </div>
            <div class="form-group">
                <label for="nameEleve">Name:</label>
                <input type="text" id="nameEleve" name="nameEleve" value="${myEleve.nameEleve}" required>
            </div>
            <div class="form-group">
                <label for="addressEleve">Address:</label>
                <input type="text" id="addressEleve" name="addressEleve" value="${myEleve.addressEleve}" required>
            </div>


            <div class="form-group">
                <label for="filiere" class="form-label">Filieres</label>
                <select class="form-select" id="filiere" name="filiere">
                    <option value="" disabled selected>Select a filiere</option>
                    <c:forEach var="fil" items="${filiereList}">
                        <option value="${fil.idFiliere}">${fil.idFiliere}- ${fil.nomFiliere}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group">
                <button type="submit" class="btn">Update Student</button>
            </div>
        </form>
    </div>

</body>
</html>
