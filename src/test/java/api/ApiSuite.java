package api;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class ApiSuite {
    @Test
    void runAll() {
        Results results = Runner.path(
                "classpath:api/cleanup/cleanup.feature",
                "classpath:api/post/post.feature",
                "classpath:api/put/put.feature",
                "classpath:api/delete/delete.feature",
                "classpath:api/get/get.feature"
        ).parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
