<!DOCTYPE html>
<html>
<head>
    <title>Fcaulty Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            color: #007bff; /* Blue color for the heading */
            text-decoration: underline;
            margin-top: 20px;
        }

        .form-container {
            background: #ffffff;
            width: 40%;
            margin: 30px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            vertical-align: middle;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        input[type="reset"]:hover {
            background-color: #dc3545;
        }

        .button-container {
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %> 
    <h3>Fcaulty Login</h3>
    <div class="form-container">
        <form method="POST" action="checkfacultylogin">
            <table>
                <tr>
                    <td><label for="email">Enter Email</label></td>
                    <td><input type="email" id="email" name="email" required/></td>
                </tr>
                <tr>
                    <td><label for="password">Enter Password</label></td>
                    <td><input type="password" id="password" name="password" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
