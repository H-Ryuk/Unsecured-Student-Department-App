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
        </div>
    </nav>

    <div class="form-container">
        <form action="/saveFiliere" method="post" modelAttribute="filiere">
            <h2>Department Information</h2>

            <div class="form-group">
                <label for="nomFiliere">Name:</label>
                <input type="text" id="nomFiliere" name="nomFiliere" required>
            </div>

            <div class="form-group">
                <button type="submit" class="btn">Save Department</button>
            </div>
        </form>
    </div>

</body>
</html>
