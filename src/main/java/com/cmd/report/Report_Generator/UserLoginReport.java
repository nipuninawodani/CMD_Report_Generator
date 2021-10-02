package com.cmd.report.Report_Generator;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserLoginReport implements Report{
    public String[][] ReportExecute(ResultSet results, int Countdata) throws SQLException {

        int count=2;
        String [][] NumberofLoginsByday =new String[Countdata+1][2];
        NumberofLoginsByday[0] = new String[]{" ", "user login report", " "};
        NumberofLoginsByday[1] = new String[]{" ", "Date"," Login Count "};
        while(results.next()){
            NumberofLoginsByday[count][1]= results.getString("date") ;
            NumberofLoginsByday[count][2]= results.getString("login_Count") ;
            count++;
        }
        return NumberofLoginsByday;
    }
}
