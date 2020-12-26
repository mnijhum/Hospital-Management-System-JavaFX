/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import MVC_Structure.controller.RoomPanelController;
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
public class RoomPanelControllerTest {
    
    RoomPanelController r;
    
    public RoomPanelControllerTest() {
    }
    
    
    
    @Before
    public void setUp() {
        r= new RoomPanelController();
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of AddRoom method, of class RoomPanelController.
     */
    @Test
    public void testAddRoom() throws Exception {
        System.out.println("AddRoom");
        assertEquals(true,r.AddRoom());
       
    }

    
    
}
