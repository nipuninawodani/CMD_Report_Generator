package com.cmd.report.Report_Generator;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserLoginReport {
    public String[][] userlogins(ResultSet results, int data) throws SQLException {
        int count=1;
        String [][] NumberofLoginsByday =new String[count][2];
        while(results.next()){
            NumberofLoginsByday[count][1]= results.getString("date") ;
            NumberofLoginsByday[count][2]= results.getString("login_Count") ;
            count++;
        }
        return NumberofLoginsByday;
    }
}
