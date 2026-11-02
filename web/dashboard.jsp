<%@page import="com.skillexchange.model.User"%>
<%
    User user = (User) session.getAttribute("loggedInUser");

    if (user == null) {
        response.sendRedirect("login.html");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard | SkillExchange</title>
    <meta charset="UTF-8">

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            margin: 0;
        }

        header {
            background: #2563eb;
            color: white;
            padding: 20px 40px;
        }

        .container {
            padding: 40px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            margin-top: 20px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.08);
        }

        a {
            color: #2563eb;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

<header>
    <h1>SkillExchange</h1>
    <p>Digital Skill Exchange and Peer Learning Platform</p>
</header>

<div class="container">

    <h2>Welcome, <%= user.getFullName() %>!</h2>
    <p>Your learning journey starts here.</p>

    <div class="card">
        <h3>My Profile</h3>
        <p>Name: <%= user.getFullName() %></p>
        <p>Email: <%= user.getEmail() %></p>
        <p>Role: <%= user.getRole() %></p>
    </div>

    <div class="card">
        <h3>Explore Skills</h3>
        <p>Discover new skills and learn from other students.</p>
        <a href="skills.jsp">Explore Available Skills</a>
    </div>

    <div class="card">
        <h3>Learning Community</h3>
        <p>Connect, collaborate and grow together.</p>
    </div>

    <p><a href="login.html">Back to Login</a></p>

</div>

</body>
</html>