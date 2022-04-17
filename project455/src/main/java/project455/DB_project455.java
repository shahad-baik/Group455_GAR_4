package project455;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DB_project455 {
	
	 String URL = "jdbc:mysql://localhost:3306/weddinghall?useSSL=false";
	 String USERNAME= "cpit455"; 
	 String PASSWORD ="cpit455"; 
	 Connection connection = null;
	String sqlQuery = "";
	 
	 PreparedStatement preparedStmt = null;
	 ResultSet resultSet = null;
	 
	 public DB_project455(){
	 try{
	 Class.forName("com.mysql.jdbc.Driver");
	 connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
	 }catch(SQLException e){
	 } catch (ClassNotFoundException ex) {
	 Logger.getLogger(DB_project455.class.getName()).log(Level.SEVERE, null, ex);
	 }
	 }
	 
	 public boolean addUser( String name, String email ,String phone ,String role , String password) {
		 System.out.println("enterr*************************");
	 sqlQuery = "insert into user(name,email,phone,role,password)values('" + name+ "','" + email + "','" + phone + "','" + role + "','" + password + "');";
	 System.out.println("enterr2222*************************");
	 try{
		 System.out.println("enterr33333*************************");
	 Statement stmt = connection.createStatement();
	 stmt.execute(sqlQuery);
	 System.out.println("enterr4444*************************");

	 }
	 catch(Exception e){
	 //System.out.print(e);
	 e.printStackTrace();
	 return false;
	 }
	 return true;
	 }
	 
	 
		public ResultSet checkLogin(String email, String password) {
		    sqlQuery = "SELECT role FROM user WHERE email=? and password=?";
		    try{
		      preparedStmt = connection.prepareStatement(sqlQuery);
		      preparedStmt.setString(1,email);
		      preparedStmt.setString(2, password);
		      resultSet = preparedStmt.executeQuery();
		      
		    }catch(SQLException e){
		      System.out.println(e);
		    }
		    return resultSet;
		  }
	 
	 public ResultSet getUsers() {
		 sqlQuery = "SELECT * FROM shahad_table;";
		 try{
		 preparedStmt = connection.prepareStatement(sqlQuery);
		 resultSet = preparedStmt.executeQuery();
		 }catch(SQLException e){}
		 return resultSet;
		 }

		 public ResultSet getUser(int ID) {
		 sqlQuery = "SELECT * FROM shahad_table WHERE id= " + ID;
		 try{
			 preparedStmt = connection.prepareStatement(sqlQuery);
			 resultSet = preparedStmt.executeQuery();

			 }catch(SQLException e){
			 System.out.println(e);
			 }
			 return resultSet;
			 }
		 	 
		 public void close(){
			 try {
			 connection.close();
			 } catch (SQLException ex) {
			 Logger.getLogger(DB_project455.class.getName()).log(Level.SEVERE,
			null, ex);
			 }
			}
		 public int updateUser(String name, String email, int ID) {
			 sqlQuery = "Update shahad_table set name = ? , email = ? WHERE id = " + ID;
			 int i=0;
			 try{
			 preparedStmt = connection.prepareStatement(sqlQuery);
			 preparedStmt.setString(1,name);
			 preparedStmt.setString(2, email);
			 i = preparedStmt.executeUpdate();

			 }
			 catch(SQLException e){
			 System.out.print(e);
			 e.printStackTrace();
			 }

			 return i;
			 }
		 
		 public int deleteUser(int ID) {
			 sqlQuery = "Delete from shahad_table WHERE id = " + ID;
			 int i=0;
			 try{
			 preparedStmt = connection.prepareStatement(sqlQuery);
			 i = preparedStmt.executeUpdate();
			 }
			 catch(SQLException e){
			 System.out.print(e);
			 e.printStackTrace();
			 }

			 return i;
			 }

		 }

