package com.cmd.report.Report_Generator;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserLoginReport implements Report{
    public Object[][] ReportExecute(ResultSet results, int Countdata) throws ResultsetSQLExeption {

        int count=2;
        Object [][] NumberofLoginsByday =new Object[Countdata+1][3];
        NumberofLoginsByday[0] = new Object[]{" ", "User Login Report", " "};
        NumberofLoginsByday[1] = new Object[]{" ", "Date"," Login Count "};
        try {
        while(results.next()){
            NumberofLoginsByday[count][1]= results.getString("date") ;
            NumberofLoginsByday[count][2]= results.getString("login_Count") ;
            count++;
        }
        } catch (SQLException throwables) {
            throw new ResultsetSQLExeption(throwables, "Can't Get result set from db ");
        }
        return NumberofLoginsByday;
    }
}
