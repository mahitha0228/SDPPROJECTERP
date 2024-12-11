<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP Project</title>
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: url('/images/ERPIMAGE.jpg');
            background-size: cover; /* Make the image cover the entire viewport */
            color: white; /* Ensure text is readable over the background */
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black background */
            padding: 10px 20px;
            color: white;
        }

        .navbar .left,
        .navbar .right {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .navbar .center {
            position: relative;
            text-align: center;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            padding: 8px 15px;
            border-radius: 4px;
        }

        .navbar a:hover {
            background-color: #575757;
        }

        /* Dropdown Menu */
        .dropdown-content {
            display: none;
            position: absolute;
            top: 40px;
            left: 50%;
            transform: translateX(-50%);
            background-color: white;
            color: black;
            min-width: 150px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 4px;
        }

        .dropdown-content a {
            display: block;
            color: black;
            padding: 10px;
            text-decoration: none;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .show {
            display: block;
        }

        .navbar a i {
            margin-left: 8px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <!-- Left content -->
        <div class="left"></div>

        <!-- Center content -->
        <div class="center">
            <div class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" onclick="toggleDropdown()">Login</a>
                <div class="dropdown-content" id="loginDropdown">
                    <a href="studentlogin">Student Login</a>
                    <a href="facultylogin">Faculty Login</a>
                    <a href="adminlogin">Admin Login</a>
                </div>
            </div>
        </div>

        <!-- Right content -->
        <div class="right">
            <a href="/">Home <i class="fas fa-home"></i></a>
            <a href="contactus">Contact Us <i class="fas fa-envelope"></i></a>
        </div>
    </div>

    <script>
        // Function to toggle the dropdown menu visibility
        function toggleDropdown() {
            const dropdown = document.getElementById('loginDropdown');
            dropdown.classList.toggle('show');
        }

        // Close dropdown when clicking outside of it
        window.onclick = function(event) {
            if (!event.target.matches('.dropdown-toggle')) {
                const dropdowns = document.getElementsByClassName('dropdown-content');
                for (let i = 0; i < dropdowns.length; i++) {
                    dropdowns[i].classList.remove('show');
                }
            }
        }
    </script>
</body>
</html>
