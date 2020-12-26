/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import MVC_Structure.controller.FinanceController;
import javafx.event.ActionEvent;
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
public class FinanceControllerITest {
    
    FinanceController f;
    
    public FinanceControllerITest() {
    }
    
   
    
    @Before
    public void setUp() {
        f = new FinanceController();
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of costTable method, of class FinanceController.
     */
    @Test
    public void testCostTable() throws Exception {
        System.out.println("costTable");
        assertEquals("6500.0",f.costTable());
    }

    /**
     * Test of Backmain method, of class FinanceController.
     */
    
    
}
