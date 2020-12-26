/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import MVC_Structure.model.DbConnector;
import java.sql.Connection;
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
public class DbConnectorTest {
    
    public DbConnectorTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getConnection method, of class DbConnector.
     */
    @Test
    public void testGetConnection() throws Exception {
        System.out.println("getConnection");
        DbConnector instance = new DbConnector();
        Connection expResult = null;
        Connection result = instance.getConnection();
        assertEquals(expResult, result);
       
    }

    
}
