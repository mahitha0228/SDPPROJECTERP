<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Certificate</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h2 {
            text-align: center;
            color: #007bff; /* Blue color */
            margin-top: 20px;
            font-size: 36px;
        }

        .container {
            width: 60%;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
        }

        /* Form Label */
        label {
            display: block;
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
        }

        /* File Input */
        input[type="file"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 2px solid #007bff;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="file"]:focus {
            outline: none;
            border-color: #0056b3;
        }

        /* Submit Button */
        button {
            display: inline-block;
            background-color: #007bff;
            color: white;
            font-size: 18px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Success and Error Messages */
        .success-message, .error-message {
            text-align: center;
            padding: 10px;
            margin-top: 20px;
            font-size: 18px;
            border-radius: 5px;
        }

        .success-message {
            background-color: #d4edda;
            color: #155724;
        }

        .error-message {
            background-color: #f8d7da;
            color: #721c24;
        }

        /* Responsive Design for Mobile Devices */
        @media (max-width: 768px) {
            .container {
                width: 90%;
            }

            h2 {
                font-size: 28px;
            }

            button {
                width: 100%;
            }
        }
    </style> 
</head>

<body>
<%@ include file="facultynavbar.jsp" %>

    <h2>Upload Your Certificate</h2>

    <!-- Display the success or error message -->
    <c:if test="${not empty message}">
        <p>${message}</p> <!-- This will display the plain text message -->
    </c:if>

    <!-- File upload form -->
    <form method="post" action="/uploadCertificate" enctype="multipart/form-data">
        <label for="certificate">Select Certificate:</label>
        <input type="file" name="certificate" id="certificate" required>
        <button type="submit">Upload</button>
    </form>

</body>
</html>
