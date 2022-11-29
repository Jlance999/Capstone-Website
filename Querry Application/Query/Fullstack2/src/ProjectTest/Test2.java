package ProjectTest;


	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.Scanner;

	public class Test2 {

		public static void main(String[] args) {
			//Create url string
			String url = "jdbc:mysql://database-1.caissr7fv3x9.us-east-1.rds.amazonaws.com:3306/StackProject";
			
			String username = "admin";
			String pass = "password";
			//connect with database fullstack with username and its details
			try (Connection con = DriverManager.getConnection(url, username, pass);
					Statement statement = con.createStatement();) {
			
			// Select statement for Customer data
				Statement statement1;
	            statement1 = con.createStatement();
	            ResultSet resultSet;
	            resultSet = statement1.executeQuery(
	                "select * from Customers");
			// Building Print Statement for Customer List
	            int id;
	        	String userEmail;
	            String userPass;
				String fName;
				String lName;
				
			// Select statement for order data
				Statement statement2;
	            statement2 = con.createStatement();
	            ResultSet resultSet2;
	            resultSet2 = statement2.executeQuery(
	                "select * from orders");
	            int id2;
	            int userId2;
	            int productId2;
	            while (resultSet2.next()) {
	            	id2 = resultSet2.getInt("id");
	            	userId2= resultSet2.getInt("userId");
	            	productId2 = resultSet2.getInt("productId");
	                System.out.println("Order ID : " + id2
	                                   + "   User ID: " +  userId2  + " productId  " + productId2);
	            }
				System.out.println("IT Capstone Group 2 Query Application vers. 1.0");
				System.out.println("Please press appropriate key to navigate application (Case Sensitive).");
				System.out.println("Menu:");
				System.out.println("C) Print list of customers and their login information");
				System.out.println("O) Print customer order history");
				System.out.println("Q) Quit");

				String options = null;
				Scanner scan = new Scanner(System.in); // Capturing the input
				do {
					options = scan.nextLine();
					switch (options) {
						case "C":
							System.out.println("Full Customer List with Email/Pass:");
							while (resultSet.next()) {
								id = resultSet.getInt("CUS_CODE");
								userEmail= resultSet.getString("userEmail");
								userPass = resultSet.getString("userPass");
								fName = resultSet.getString("CUS_FNAM");
								lName = resultSet.getString("CUS_LNAME");
								System.out.println("User Name: " + fName + " " + lName + "  User ID : " + id
												+ "   User Email: " +  userEmail  + " User Password: " + userPass);
							}
							break;
						case "O":
							// do what you want
							break;
					}
				} while (!options.equals("Q")); // quitting the program
			

	            resultSet.close();
	            statement1.close();
				resultSet2.close();
				statement2.close();
	            con.close();
			
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

	}