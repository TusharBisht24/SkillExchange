<%@page import="java.sql.*"%>
<%@page import="com.skillexchange.config.DBConnection"%>

<!DOCTYPE html>
<html>
<head>
    <title>Explore Skills | SkillExchange</title>
    <meta charset="UTF-8">

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            margin: 0;
            padding: 30px;
        }

        h1 {
            color: #2563eb;
            text-align: center;
        }

        .skills {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
            max-width: 1000px;
            margin: 30px auto;
        }

        .card {
            background: white;
            padding: 22px;
            border-radius: 12px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.08);
        }

        .card h3 {
            color: #2563eb;
        }

        a {
            color: #2563eb;
            text-decoration: none;
        }
    </style>
</head>

<body>

<h1>Explore Available Skills</h1>
<p style="text-align:center;">
    Discover something new and grow together!
</p>

<div class="skills">

<%
    String sql = "SELECT * FROM skills ORDER BY skill_name";

    try (Connection con = DBConnection.getConnection();
         PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        while (rs.next()) {
%>

    <div class="card">
    <h3>Explore Skills</h3>
    <p>Discover new skills and learn from other students.</p>
    <a href="skills.jsp">Explore Available Skills ?</a>
</div>

<%
        }

    } catch (Exception e) {
%>
    <p>Unable to load skills: <%= e.getMessage() %></p>
<%
    }
%>

</div>

<p style="text-align:center;">
    <a href="dashboard.jsp">? Back to Dashboard</a>
</p>

</body>

</html>