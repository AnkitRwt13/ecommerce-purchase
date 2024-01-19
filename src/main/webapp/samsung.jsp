<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.bean.*,com.helper.*"%>
    
    	
<%		if(session.getAttribute("name")==null && !(session.getAttribute("name").equals(1))){
		request.getRequestDispatcher("./home.jsp").forward(request, response);
		}
		ProductExtraction pe=new ProductExtraction();
		ProductBean [] product=pe.extract(Integer.parseInt(request.getParameter("limit")));
		session.setAttribute("product0", product[0]);
		session.setAttribute("product1",product[1]);
		session.setAttribute("product2",product[2]); 
		%>
	


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
            height: 800px;
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
        .Addcart{
            display: flex;
            justify-content: center;
        }
        .next{
            background-color: aqua ;
            width: 100%;
            height: 60px ;
            display: flex;
            justify-content: space-evenly;
        }
        .nextPage,.purchase{
            width: 80px;
            height: 30px;
            margin-top: 15px;
            font-size: 20px;
            
        }
        .nextPage input, .purchase input{
			width: 100%;			height: 100%;			background-color: aqua;			border-radius: 5px;			font-size: 18px;        }
        .next :hover{
            background-color: greenyellow;
            border: 1px solid black;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo"></div>
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
            <a href="./login.jsp" class="box-login">Log Out</a>
        </div>
    </header>

    <form action='./samsung1.jsp?limit=3' method='post'>
    <div class="content">
        <div class="product-1"><a href=""><img src='<%=product[0].getImage() %>' alt="" style="max-width: 250px;"></a><p><%=product[0].getModel() %></p>
            <div class="Addcart"><input type="checkbox" name="flag1" value='selected'><p> Add to cart</p></div>
            <p><%=product[0].getModel() %></p>
            <p>Price: <%=product[0].getPrice() %></p>
            <p><%=product[0].getFeatures() %></p>
        </div>
        <div class="product-2"><a href=""><img src='<%=product[1].getImage() %>' alt="" style="max-width: 250px;"></a><p><%=product[1].getModel() %></p>
            <div class="Addcart"><input type="checkbox" name="flag2"value="selected"><p> Add to cart</p></div>
            <p><%=product[1].getModel() %></p>
            <p>Price: <%=product[1].getPrice() %></p>
            <p><%=product[1].getFeatures() %></p>
        </div>
        <div class="product-3"><a href=""><img src='<%=product[2].getImage() %>' alt="" style="max-width: 250px;"></a><p><%=product[2].getModel() %></p>
            <div class="Addcart"><input type="checkbox" name="flag3" value="selected"><p> Add to cart</p></div>
            <p><%=product[2].getModel() %></p>
            <p>Price: <%=product[2].getPrice() %></p>
            <p><%=product[2].getFeatures() %></p>
        </div>
        <div class="next">
            <div class='purchase'><input type='submit' name='next' value='next'></div>
            <div class='purchase'><input type='submit' name='purchase1' value='purchase'></div>
        </div>
        
    </div>
    </form>
</body>
</html>