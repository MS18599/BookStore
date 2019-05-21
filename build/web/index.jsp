<%-- 
    Document   : index
    Created on : 20 Nov, 2018, 8:32:22 PM
    Author     : ranjeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <style>
        body
        {
            background-image: linear-gradient(90deg,#c32aa3,#7232bd);
        }
        .container
        {
            position: relative;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
         position: relative;
         top: 150px;
         height: 280px;
         width: 340px;
         border-radius: 10px;
        }
         .btn
     {
         background-image: linear-gradient(90deg,#7232bd,#4c5fd7);
         color: white;
         height: 38px;
         width: 250px;
         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
         border-radius: 6px;
         border: none;
         margin-bottom: 30px;
         cursor: pointer;
     }
      .btn2
     {
        background-image: linear-gradient(90deg,#4c5fd7,#5cb85c);
         color: white;
         height: 38px;
         width: 250px;
         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
         border-radius: 6px;
         border: none;
         margin-bottom: 40px;
         cursor: pointer;
     }
     p{
         margin-bottom: 35px;
     }
     h2{
         
         position: relative;
         top: 30px;
         color:black;
         margin-bottom: 43px;
         text-align: center;  
     }
     .container:hover
     {
         
         
         box-shadow: 3px 4px 8px 10px rgba(0, 0, 0, 0.2), 1px 6px 20px 0 rgba(0, 0, 0, 0.19);    
     }
        </style>
    <body>
    <center>
        <div class="container-fluid">
            <div class="row">
                
                    <div class="item">
                        <div class="container">
                            <center>
                            <h2>Welcome to BookStore</h2>
                            <p>Stay for what you Discover.</p>
                            
                                 <input type="submit" value="Store your Book" class="btn" onclick="window.location.href='Book.jsp';">
                                 <br>
                                 <input type="submit" value="View Your Book" class="btn2" onclick="window.location.href='View.jsp';">
                            </form>
                            </center>
                        </div>
                        
                    </div>
                </div>
    </body>
</html>
