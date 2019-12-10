package ru.nsu.flowerstore;

import java.sql.*;

public class DataBaseImpl implements DataBase {

    public Data getData() throws SQLException, ClassNotFoundException {
        Connection con = SingleConnection.getInstance();
        Statement stmt = con.createStatement();
        String query = "SELECT * FROM table WHERE id=(SELECT MAX(id) FROM Admin)";
        ResultSet resultSet = stmt.executeQuery(query);
        resultSet.next();
        int minSum = resultSet.getInt(2);
        int maxSum = resultSet.getInt(3);
        int minTime = resultSet.getInt(4);
        int maxTime = resultSet.getInt(5);
        int rate = resultSet.getInt(6);
        Data data = new Data(minSum, maxSum, minTime, maxTime, rate);
        con.close();
        return data;
    }


    public void changeData(Data data) throws SQLException, ClassNotFoundException {
        Connection con = SingleConnection.getInstance();
        Statement stmt = con.createStatement();
        String update = "insert into `Admin` (`minSum`, `maxSum`, `minTime`, `maxTime`, `rate`) values " + data.toSql();
        stmt.executeUpdate(update);
    }

}
