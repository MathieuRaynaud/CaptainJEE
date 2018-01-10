import javax.jms.Message;
import java.lang.reflect.Type;
import java.sql.*;

public class TestSQL {
public void load() throws SQLException {
        // Connect to database
        Connection connection = DriverManager.getConnection("jdbc:sqlite:db.sqlite");
        if (connection == null) {
        return; }

        // Select messages exchanged with the user
        try {
        Statement statement = connection.createStatement();
        String SQLRequest = "SELECT type, direction, date, content FROM message WHERE username = \"toto\"";
        ResultSet results = statement.executeQuery(SQLRequest); //READ DATA

        // Loop through results
            while (results.next()) {
        //results.getByte();
        }

        // Close database
        connection.close();
        } catch (SQLException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
        }
}


public void save() throws SQLException {
        // TODO: create table if not existing
        // Connect to database
        Connection connection = DriverManager.getConnection("jdbc:sqlite:CaptainJEE/db/db.sqlite");
        if (connection == null)
        return;

        String SQLRequest = "INSERT INTO user VALUES(\"ROBERTO\"";
        Statement statement = null;
        try {
        statement = connection.createStatement();

        // Insert user in case it doesn't exist
        statement.executeUpdate(SQLRequest); //UPDATE DATA
        } catch (SQLException e) {
        e.printStackTrace();
        } finally {

        try {
        statement.executeUpdate(SQLRequest);
        } catch (SQLException e) {
        e.printStackTrace();
        }
        }
}
}