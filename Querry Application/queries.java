package ProjectTest;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.ResultSet;
	import java.sql.Statement;
	public class queries {
		
		public static void main(String[] args) {
			//Create url string
			String url = "https://master.d356a7mb2taffw.amplifyapp.com/";
			
			String username = "admin";
			String pass = "password";
			//connect with database fullstack with username and its details
			try (Connection con = DriverManager.getConnection(url, username, pass);
					Statement statement = con.createStatement();) {
			// Select statement
				Statement statement1;
	            statement1 = con.createStatement();
	            ResultSet resultSet;
	            resultSet = statement1.executeQuery(
	                "select * from orders");
	            int id;
	            int userId;
	            int productId;
                System.out.println("Orders details");

	            while (resultSet.next()) {
	            	id = resultSet.getInt("id");
	            	userId= resultSet.getInt("userId");
	            	productId = resultSet.getInt("productId");

	                System.out.println(" ID : " + id
	                                   + "   User ID: " +  userId  + " productId  " + productId);
	                }
	            
	            
	            
	            resultSet = statement1.executeQuery(
		                "select * from Customers");
		            int CUS_CODE;
		            String CUS_LNAME;
		            String CUS_FNAME;
		            
	                System.out.println("Customers details");
		            while (resultSet.next()) {
		            	CUS_CODE = resultSet.getInt("CUS_CODE");
		            	CUS_LNAME= resultSet.getString("CUS_LNAME");
		            	CUS_FNAME = resultSet.getString("CUS_FNAME");
		                System.out.println(" CUS_CODE : " + CUS_CODE
		                                   + "   CUS_LNAME: " +  CUS_LNAME  + " CUS_FNAME  " + CUS_FNAME);
		            }
		            resultSet.close();
		            statement1.close();
	            con.close();
			
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

	}




