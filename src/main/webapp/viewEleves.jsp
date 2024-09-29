<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eleve Information</title>
    <link rel="stylesheet" href="style2.css">
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



    <div class="container">
        <h2>Eleves List</h2>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Department</th>
                    <th>Actions</th> <!-- New column for actions -->
                </tr>
            </thead>
            <tbody>
                <c:forEach var="eleve" items="${eleveList}">
                    <tr>
                        <td>${eleve.idEleve}</td>
                        <td>${eleve.nameEleve}</td>
                        <td>${eleve.addressEleve}</td>
                        <td>${eleve.filiere.nomFiliere}</td>
                        <td>
                            <a href="/updating?id=${eleve.idEleve}" class="action-link update">Update</a> |
                            <a href="/deleteEleve?id=${eleve.idEleve}" class="action-link delete">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br/>
        <a href="/" class="btn">Back to Home</a>
    </div>

</body>
</html>
