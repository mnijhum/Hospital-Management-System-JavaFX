/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import MVC_Structure.controller.DoctorPanelController;
import javafx.event.ActionEvent;
import MVC_Structure.model.*;
import com.mysql.cj.protocol.Resultset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Mushfikunnabi Nijhum
 */
public class DoctorPanelControllerTest {
    
    DbConnector db;
    public Connection conn;
    PreparedStatement pst=null;
    ResultSet rs=null;
    String id="";
    public DoctorPanelControllerTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() throws SQLException {
        
        id="4"; //this id is for insrting.
        db= new DbConnector();
        conn=db.getConnection();
        
        pst = conn.prepareStatement("INSERT INTO `doctor`(`DId`,`FirstName`,`LastName`,`Age`,`Date1`,`Phone`,`Gender`,`Specialist`,`Salary`) VALUES (?,?,?,?,?,?,?,?,?)");
            
            pst.setString(1, id);
            pst.setString(2, "Omar");
            pst.setString(3, "Iqbal");
            pst.setString(4, "27");
            pst.setString(5, "2020-12-26");
            pst.setString(6, "123456");
            pst.setString(7, "Male");
            pst.setString(8, "Nak kan");
            pst.setString(9, "20000");
            
            pst.executeUpdate();
    }
    
    @After
    public void tearDown() throws SQLException {
        String query= "Delete from doctor where DId=4";
        Statement stmt = conn.createStatement();
        stmt.executeUpdate(query);
        conn.close();
    }

    /**
     * Test of AddDoctor method, of class DoctorPanelController.
     */
    @Test
    public void testAddDoctor() throws Exception {
        System.out.println("AddDoctor");
         //checking if iniserting works with only id it can be same said for name and other values.
         int id=4; //checking value change this for checking
         int idcheck=0;
         conn=db.getConnection();
         String sql="SELECT * from doctor where DId=4";
         Statement stmt = conn.createStatement();
         rs=stmt.executeQuery(sql);
         while(rs.next())
         {
             idcheck=rs.getInt(1);
         }
         assertEquals(id,idcheck);
    }
    
    @Test
    public void testSearchDoctor() throws Exception{
        System.out.println("Search Doctor");
        
       
         //checking if iniserting works with only id it can be same said for name and other values.
         String Name="Mush"; //checking value change this for checking
         String idcheck="";
         conn=db.getConnection();
         String sql="SELECT * from doctor where DId=1";
         Statement stmt = conn.createStatement();
         rs=stmt.executeQuery(sql);
         while(rs.next())
         {
             idcheck=rs.getString(2);
         }
         assertEquals(Name,idcheck);
    
    
    }
 
    
}
