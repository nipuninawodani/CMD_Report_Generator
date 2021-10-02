package com.cmd.report.Report_Generator;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.instanceOf;
import static org.hamcrest.MatcherAssert.assertThat;

public class reportFactoryTest {
    //If  ReportType is user_login should return a object of Userloginreport class.
    @Test
    public void should_return_Userloginreport_object_when_reporttype_is_user_login() {
        ReportFactory reportFactory = new ReportFactory();
        Report report = reportFactory.reportGeneration("user_login");

        //verify that the report object is an instance of UserLoginReport class
        assertThat(report, instanceOf(UserLoginReport.class));
    }

    @Test
    public void should_return_OrderReport_object_when_ReportType_is_order() {
    //If  ReportType is order should return a object of OrderReport class.
    ReportFactory reportFactory = new ReportFactory();
    Report report = reportFactory.reportGeneration("user_login");

    //verify that the report object is an instance of OrderReport class
    assertThat(report, instanceOf(OrderReport.class));
   }
}