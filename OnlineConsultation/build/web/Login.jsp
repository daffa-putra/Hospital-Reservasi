<%-- 
    Document   : Login
    Created on : Jul 19, 2024, 12:51:05 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="form-container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="eMail" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="pWord" required>
            </div>
            <div class="form-group">
                <button type="submit">Login</button>
            </div>
            <p>Don't have an account? <a href="SignUp.jsp">Sign up here</a></p>
        </form>
    </div>
    <script>
        // Function to get query parameter
        function getQueryParam(param) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(param);
        }

        // Check if the 'status' parameter is present in the URL
        const status = getQueryParam('status');

        if (status === 'success') {
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: 'Reservation submitted successfully!'
            });
        } else if (status === 'error') {
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Failed to login. Please try again.'
            });
        }
    </script>
</body>

</html>

