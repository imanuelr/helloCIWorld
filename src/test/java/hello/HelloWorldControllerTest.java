package hello;


import org.assertj.core.api.Assertions;
import org.junit.Test;

public class HelloWorldControllerTest {

    @Test
    public void testIndexPageContent() {
        HelloWorldController helloWorldController = new HelloWorldController();

        Assertions.assertThat(helloWorldController.index()).isEqualTo("Hello CI world!");
    }

}