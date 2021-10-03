package com.cmd.report.connector;

import org.junit.Test;

import java.sql.Connection;

import static org.hamcrest.CoreMatchers.instanceOf;
import static org.junit.Assert.assertThat;

public class MySqlDBConnectorTest {

    //should return connection object when valid inputs are given
    @Test
    public void returns_connection_when_arguments_are_correct() throws DBConnectorException {

        DBConnector dbConnector = new MySqlDBConnector();
        Connection connection = dbConnector.getConnection();
        assertThat(connection, instanceOf(java.sql.Connection.class));
    }

    //Should throw an error when invalid argumants are given
    /*@Test
    public void throw_an_error_when_invalid_argumants_are_given() {

        DBConnector dbConnector = new MySqlDBConnector();
        assertThrows(DBControllerException.class, () ->{
            dbController.getResults(connection,query);
        });

    }*/
}
