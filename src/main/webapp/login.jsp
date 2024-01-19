<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .outerBox{
            position: fixed;
            top: 80px; 
            /* background-color: black; */
            right:35%;
            /* text-align: center; */
            left:25%;
            padding:20px 20px;
            border: 2px solid black;
            border-radius: 4px;
        }
        input[type=text],input[type=password]{
            width: 95%;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        .but-log{
            width: 97%;
            background-color: aquamarine;
            margin: 10px 0px;
            padding: 10px 0px;
        }
        .innerBox-2{
            padding-top: 30px;
            display: flex;
            justify-content: space-between;
        }
        .buttcancel{
            width: 80px;
            height: 40px;
            /* margin-top:30px ; */
            background-color: red;

        }
        .forget{
            margin-right: 15px;
        }

    </style>
</head>
<body>
    <div class="outerBox">
        <form action="./LoginCheck" method="post">
        	<p style="color:green;"><%= request.getAttribute("message") %></p>
            <div class="innerBox-1">
                <p>User Name</p>
                <input type="text" placeholder="Ex: mca@spring.com" name="name">
                <p>Password</p>
                <input type="password" placeholder="Ex: fa25@%14 (minimun 8 character)" name="password">
                <button type="submit" class="but-log">Log In</button><br>
                <input type="checkbox">Remember me
            </div>
        </form>
        <form action="/home.jsp" method="post">  
            <div class="innerBox-2">
                <button type="submit" class="buttcancel">Cancel</button>
                <p class="forget">Forget <a href="#"> Password ? </a></p>
            </div>
        </form>
    </div>
</body>
</html>