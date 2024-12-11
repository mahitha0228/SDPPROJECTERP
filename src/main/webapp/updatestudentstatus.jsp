<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student Status</title>
    <style>
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }

        a {
            text-decoration: none;
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            margin: 0 5px;
        }

        a:hover {
            background-color: #45a049;
        }

        .reject {
            background-color: #f44336;
        }

        .reject:hover {
            background-color: #da190b;
        }

    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Update Student Status</u></h3>
    
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${studentList}" var="student">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.gender}"/></td>
                <td><c:out value="${student.dateOfBirth}"/></td>
                <td><c:out value="${student.department}"/></td>
                <td><c:out value="${student.salary}"/></td>
                <td><c:out value="${student.location}"/></td>
                <td><c:out value="${student.email}"/></td>
                <td><c:out value="${student.contact}"/></td>
                <td><c:out value="${student.status}"/></td>
                <td>
                    <a href='<c:url value="updatestatus?id=${student.id}&status=Accepted"/>'>Accept</a>
                    <a href='<c:url value="updatestatus?id=${student.id}&status=Rejected"/>' class="reject">Reject</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
