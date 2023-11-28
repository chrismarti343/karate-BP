package examples;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

public class ExamplesTest {
    @Test
    void testPetShop() {
        Results results = Runner.path("classpath:examples")
                //.outputCucumberJson(true)
                .parallel(0);
    }

}
