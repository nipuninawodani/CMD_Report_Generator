package com.cmd.report.Report_Generator;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderReport implements Report {
    public String[][] ReportExecute(ResultSet results, int Countdata) throws SQLException {
        int count=1;
        String [][] orderDatabyday =new String[Countdata][5];
        while(results.next()){
            orderDatabyday[count][1]= results.getString("date") ;
            orderDatabyday[count][2]= results.getString("Num_of_orders") ;
            orderDatabyday[count][3]= results.getString("Cancelled_Orders") ;
            orderDatabyday[count][4]= results.getString("Pending_Orders") ;
            orderDatabyday[count][5]= results.getString("Confirmed_Orders") ;
            count++;
        }
        return orderDatabyday;
    }
}
