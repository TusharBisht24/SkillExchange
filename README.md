# SkillExchange – Digital Skill Exchange and Peer Learning Platform

## Project Overview
SkillExchange is a web-based platform that allows students to share their skills, discover new learning opportunities, and connect with other students for peer-to-peer learning.

The platform aims to encourage collaborative learning and knowledge sharing.

## Technologies Used
- **Frontend:** HTML, CSS, JSP
- **Backend:** Java, Java Servlets
- **Database:** MySQL
- **Database Connectivity:** JDBC
- **IDE:** Apache NetBeans
- **Server:** Apache Tomcat 10.1

## Key Features
- Student Registration
- Student Login and Authentication
- Session-based Dashboard
- Explore Available Skills
- Dynamic display of skills from MySQL database
- Database connectivity using JDBC

## Database
Database Name: `skillexchange_db`

Main database tables:
- users
- skills
- user_skills
- learning_interests
- matches
- sessions
- messages
- reviews

## Project Structure
- `src` – Java source code, Servlets, DAO, Models and database configuration.
- `web` – HTML, JSP and web resources.
- `nbproject` – NetBeans project configuration.
- `build.xml` – Project build configuration.

## Installation and Setup
1. Install JDK 26, Apache NetBeans and Apache Tomcat 10.1.
2. Install MySQL Server.
3. Create the database `skillexchange_db`.
4. Create the required database tables.
5. Add MySQL Connector/J to the project.
6. Configure your own MySQL credentials
