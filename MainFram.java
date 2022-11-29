import javax.swing.*;

import javafx.scene.Scene;
import javafx.scene.control.Menu;
import javafx.scene.control.MenuBar;
import javafx.scene.control.MenuItem;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class MainFram extends JFrame {

    // public void initialize(){

    private customerList customerList = new customerList();

    // @Override

    public void start(Stage primaryStage) throws Exception {

        // Print all customers and their login information
        MenuItem printCustomersMenuItem = new MenuItem("Print all customers and their login information");
        printCustomersMenuItem.setOnAction(e -> extracted());

        // Order history for each user
        MenuItem orderHistoryMenuItem = new MenuItem("Order history for each user");
        orderHistoryMenuItem.setOnAction(e -> {
            System.out.println("Orders details");
            customerList.orderHistory();
        });

        // Exit
        MenuItem exitMenuItem = new MenuItem("Exit");
        exitMenuItem.setOnAction(e -> {
            System.exit(0);
        });

        // File menu
        Menu fileMenu = new Menu("File");
        fileMenu.getItems().add(printCustomersMenuItem);
        fileMenu.getItems().add(orderHistoryMenuItem);
        fileMenu.getItems().add(exitMenuItem);

        // Menu bar
        MenuBar menuBar = new MenuBar();
        menuBar.getMenus().add(fileMenu);

        BorderPane root = new BorderPane();
        root.setTop(menuBar);

        Scene scene = new Scene(root, 400, 400);
        primaryStage.setTitle("Customers Query Application");
        primaryStage.setScene(scene);
        primaryStage.show();

    }

    private void extracted() {
        customerList.printCustomers();
    }

}
