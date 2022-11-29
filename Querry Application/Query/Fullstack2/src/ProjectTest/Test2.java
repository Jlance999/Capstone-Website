package ProjectTest;


	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.ResultSet;
	import java.sql.Statement;

	public class Test2 {

		public static void main(String[] args) {
			//Create url string
			String url = "jdbc:mysql://database-1.caissr7fv3x9.us-east-1.rds.amazonaws.com";
			
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
	            while (resultSet.next()) {
	            	id = resultSet.getInt("id");
	            	userId= resultSet.getInt("userId");
	            	productId = resultSet.getInt("productId");
	                System.out.println(" ID : " + id
	                                   + "   User ID: " +  userId  + " productId  " + productId);
	            }
	            resultSet.close();
	            statement1.close();
	            con.close();
			
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

	}


