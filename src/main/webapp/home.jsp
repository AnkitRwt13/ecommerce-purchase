
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>shop me</title>
    <style>
        *{
            margin: 0;
        }
        .box{
            /* margin-top: 100px; */
            padding-top: 10px;
            width: 100%;
            height: 60px;
            display: flex;
            background-color: black;
            justify-content: space-evenly;
            
        }
        .box a{
            /* position: relative; */
            color:white;
            text-decoration: none;
            padding: 0px 20px 10px 20px;
            font-size: 25px;
        }
        .box a:hover,.dropButton:hover .butMobile{
            background-color: greenyellow;
        }
        .box-login{
            float: right;
            margin-right: 20px;
        }
        .dropButton button{
            background-color: black;
            color: white;
            padding-bottom: 30px;
            font-size: 25px;
            border: none;
            outline: none;
        }
        .dropBox{
            display: none;
            position: absolute;
            /* margin-top: 1px; */
            background-color: whitesmoke;
            
        }
        .dropBox a{
            display: block;
            color: black;
            /* float: none; */
        }
        /* .butMobile:hover{
            background-color: greenyellow;
        } */
        .dropBox a:hover{
            background-color: bisque;
        }
        .dropButton:hover .dropBox {
            display: block;
        }
        .logo{
            width: 200px;
            height: 120px;
            background-image: url("./img/logo.jpg");
            background-size: cover;
        }
        .content{
            width: 90%;
            height: 1000px;
            display: flex;
            background-color: antiquewhite;
            margin-left: 75px;
            justify-content: space-evenly;
            flex-wrap: wrap;
        }
        .product-1,.product-2 ,.product-3{
            margin-top: 20px;
            width: 400px;
            height: 400px;
            /* border: 2px red solid; */
            text-align: center;
            /* margin-left: 10px; */
            
        }
        .sign{
            position: absolute;
            margin-top: -80px;
            margin-left:90%;            
            color: black;
        }
        .sign a{
            color: black;
            font-size: larger;
            text-decoration: none;
            outline: none;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo"></div>
        <div class="sign"><a href="./login.jsp">Sign In</a>
        <a href="./registration.jsp">Sign Up</a></div>
        <div class="box">
            <a href="#">Home</a>
            <a href="#">News</a>
            <div class="dropButton">
                <button type="button" class="butMobile">Mobile</button>
                <div class="dropBox">
                <a href="#">Apple</a>
                <a href="#">Samsung</a>
                <a href="#">Nothing</a>
                <a href="#">OnePlus</a>
                </div>
            </div>
            <a href="#">About</a>
            <a href="./login.jsp" class="box-login">Signin</a>
        </div>
    </header>
    <div class="content">
        <div class="product-1"><a href=""><img src="./img/iphone14.jpg" alt="" style="max-width: 250px;"></a><p>Phone: Iphone 14</p>
            <p>Price:59999</p>
            <p>feature: 32MP rear camera</p>
            <p>8 GB RAM</p>
        </div>
        <div class="product-2"><a href=""><img src="./img/samsungS23Ultra.jpg" alt="" style="max-width: 250px;"></a><p>Phone: Iphone 14</p>
            <p>Price:124599</p>
            <p>feature: 200MP rear camera</p>
            <p>12 GB RAM</p>
        </div>
        <div class="product-3"><a href=""><img src="./img/nothingPhone2.jpg" alt="" style="max-width: 250px;"></a><p>Phone: Iphone 14</p>
            <p>Price:42599</p>
            <p>feature: 32MP rear camera</p>
            <p>8 GB RAM</p>
        </div>
        <div class="product-1"><a href=""><img src="./img/samsungZFold4.jpg" alt="" style="max-width: 225px;"></a><p>Phone: Iphone 14</p>
        <p>Price:87999</p>
        <p>feature: 100MP rear camera</p>
        <p>8 GB RAM</p>
        </div>
        <div class="product-1"><a href=""><img src="./img/oneplus12.jpg" alt="" style="max-width: 250px; "></a><p>Phone: Iphone 14</p>
            <p>Price:84599</p>
            <p>feature: 100MP rear camera</p>
            <p>12 GB RAM</p>
            </div>
        <div class="product-1"><a href=""><img src="./img/oneplus10Pro.jpg" alt="" style="max-width: 250px;"></a><p>Phone: Iphone 14</p>
        <p>Price:56999</p>
        <p>feature: 100MP rear camera</p>
        <p>8 GB RAM</p>
        </div>
        
    </div>
</body>
</html>
