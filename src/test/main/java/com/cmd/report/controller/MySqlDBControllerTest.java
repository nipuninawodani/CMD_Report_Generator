package com.cmd.report.controller;

import com.cmd.report.connector.DBConnector;
import com.cmd.report.connector.DBConnectorException;
import com.cmd.report.connector.MySqlDBConnector;
import org.junit.Test;
import org.mockito.Mock;

import java.sql.Connection;
import java.sql.ResultSet;

import static org.hamcrest.CoreMatchers.instanceOf;
import static org.junit.Assert.assertThat;

public class MySqlDBControllerTest {
    DBConnector dbConnector = new MySqlDBConnector();
    @Mock
    Connection connection;

    {
        try {
            connection = dbConnector.getConnection();
        } catch (DBConnectorException e) {
            e.printStackTrace();
        }
    }

    private String query = "SELECT * FROM Order_Report;";


    //should return resultsset object when valid inputs are given
    @Test
    public void returns_resultset_when_arguments_are_correct() throws DBControllerException {

        DBController dbController = new MySqlDBController();
       ResultSet resultSet = dbController.getResults(connection,query);
        assertThat(resultSet, instanceOf(java.sql.ResultSet.class));


    }
}