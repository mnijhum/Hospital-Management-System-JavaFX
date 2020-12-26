/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import MVC_Structure.controller.PatientPanelController;
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
public class PatientPanelControllerITest {
    PatientPanelController p;
    
    public PatientPanelControllerITest() {
    }
    
    
    
    @Before
    public void setUp() {
        p =new PatientPanelController();
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of AddPatient method, of class PatientPanelController.
     */
    @Test
    public void testAddPatient() throws Exception {
        System.out.println("AddPatient");
        assertEquals(true,p.AddPatient());
    }

    
}
