package pl.urbanik.controller;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class HomeControllerTest {

    @Test
    void hello() {
        HomeController controller = new HomeController();
        String response = controller.home();
        assertEquals("search", response);
    }

}