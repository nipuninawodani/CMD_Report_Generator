package com.cmd.report.Report_Generator;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderReport implements Report {
    public Object[][] ReportExecute(ResultSet results, int Countdata) throws ResultsetSQLExeption {

        int count=2;
        Object [][] orderDatabyday =new Object[Countdata+2][6];
        orderDatabyday[0] = new Object[]{" ", " ","Order Report"," " ," "};
        orderDatabyday[1] = new Object[]{" ", "Date"," Number Of Order "," Cancelled Orders "," Pending Orders "," Confirmed Orders "};
        try {
            while (results.next()) {
                orderDatabyday[count][1] = results.getString("date");
                orderDatabyday[count][2] = results.getString("Num_of_orders");
                orderDatabyday[count][3] = results.getString("Cancelled_Orders");
                orderDatabyday[count][4] = results.getString("Pending_Orders");
                orderDatabyday[count][5] = results.getString("Confirmed_Orders");
                count++;
            }
        }catch (SQLException throwables) {
                throw new ResultsetSQLExeption(throwables, "Can't Get result set from db ");
            }
        return orderDatabyday;
    }
}
