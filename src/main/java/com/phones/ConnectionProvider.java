package com.phones;
import java.sql.*;

public class ConnectionProvider {
	
  private static Connection con;

  public static Connection getConnection() {
      try {

          if(con==null){

              Class.forName("com.mysql.cj.jdbc.Driver");
             // Class.forName("com.mysql.jdbc.Driver");     ?autoReconnect=true
               //con = DriverManager.getConnection("jdbc:mysql://sql354.main-hosting.eu:3306/u710183214_cms?autoReconnect=true&useUnicode=yes", "u710183214_Testing", "R@ju@1999");
              con = DriverManager.getConnection("jdbc:mysql://sql354.main-hosting.eu:3306/u710183214_cms?autoReconnect=true", "u710183214_Testing", "R@ju@1999");
           //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/u710183214_cms","root","");
//          System.out.println("Connection => "+con);

          }


      } catch (Exception e) {
          e.printStackTrace();
      }
      return con;
  }

}
