<%-- 
    Document   : View
    Created on : 20 Nov, 2018, 9:34:25 PM
    Author     : ranjeet
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BookStore</title>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <style>
     .navbar
     {
       color: white;
       box-shadow: 3px 4px 8px 5px rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    background-color: #c32aa3; 
    background-image: linear-gradient(90deg,#7232bd,#c32aa3);
    height: 45px;
     }
    

     .container{
         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
         position: relative;
         margin-top: 50px;
         height: 500px;
         border-radius: 10px;
         
     }
     .container:hover
     {
         background-image: linear-gradient(180deg,#c32aa3,#7232bd);
         color:white;
         box-shadow: 3px 4px 8px 10px rgba(0, 0, 0, 0.2), 1px 6px 20px 0 rgba(0, 0, 0, 0.19);
          
          
     }
     
     
     h3{
         position: relative;
         top: 30px;
         
         margin-bottom: 70px;
         text-align: center;   
     }
     .btn
     {
         background-image: linear-gradient(90deg,#4c5fd7,#5cb85c);
         color: white;
         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
         border-radius: 10px;
     }
     .table 
     {
         position: relative;
         margin-top: 20px;
    
     }
     .table table-border
     {
         background-image: linear-gradient(90deg,#4c5fd7,#7232bd,#c32aa3,#f46f30);
         color: white;
     }
     .navbar-brand
     {
         text-decoration: none;
         color: white;
         
     }
     .navbar-brand:hover
     {
         color:white;
     }
     
     
    </style>
    <body>
        <div class="navbar">
            <div class="navbar-header">
            <a class="navbar-brand">BookStore</a>
            <a class="navbar-brand" href="Book.jsp">Home</a>
            <a class="navbar-brand" href="Update.jsp">Update</a>
            <a class="navbar-brand" href="Delete.jsp">Delete</a>
        </div>
        </div>
        
            
        </div>
        
<center> 
            <div class="col-sm-10">
                <div class="table">
                <div class="table table-hover table-responsive card-body">
                
                    <table class="table table-border">
                        <caption>Book Details</caption>
                           <thead>
                               <tr>
                                   <th scope="col">Title</th>
                                   <th scope="col">Author</th>
                                   <th scope="col">ISBN</th>
                                   <th scope="col">Description</th>
                               </tr>
                           <tbody>
                             <% 
                             try
                              {
                               Class.forName("com.mysql.jdbc.Driver");
                              String titlename=null;
                              String authorname=null;
                              String isbn=null;
                              String des=null;
                              Connection con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","iamking@123");
                              PreparedStatement ps=con.prepareStatement("Select * from studentdata");
                                ResultSet rs=ps.executeQuery();
                                
                             %>
                             <%
                                while(rs.next())
                                    {
                                         titlename=rs.getString("titlename");
                                         authorname=rs.getString("authorname");
                                         isbn=rs.getString("isbn");
                                         des=rs.getString("des");
                                        
                                  %>  
                              
                                    <tr>
                                        <td><%= titlename %></td>
                                        <td><%= authorname %></td>
                                        <td><%= isbn %></td>
                                        <td><%= des %></td>
                                    </tr>
                                    <% 
                                    }

                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        }
                                    %>
                              


                                   
                               
                               
                            </tbody>
                           
                           
 
                           </thead>
                    </table>
                                    </center>
                    
                </div>
            </div>
            
        </div>
            </div>
            </div>
         
    </body>
</html>
