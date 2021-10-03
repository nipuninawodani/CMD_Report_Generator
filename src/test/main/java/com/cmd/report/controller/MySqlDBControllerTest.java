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
import static org.junit.jupiter.api.Assertions.assertThrows;

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


    //should return resultsset object when valid inputs are given
    @Test
    public void returns_resultset_when_arguments_are_correct() throws DBControllerException {

        String query = "SELECT * FROM Order_Report;";

        DBController dbController = new MySqlDBController();
       ResultSet resultSet = dbController.getResults(connection,query);
        assertThat(resultSet, instanceOf(java.sql.ResultSet.class));
    }

    //Should throw an error when invalid argumants are given
    @Test
    public void throw_an_error_when_invalid_argumants_are_given() throws DBControllerException {

        String query = "Abcd";

        DBController dbController = new MySqlDBController();
        assertThrows(DBControllerException.class, () ->{
            dbController.getResults(connection,query);
        });
    }
}