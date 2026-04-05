package api.put;

import com.intuit.karate.junit5.Karate;

public class UserPut {
    @Karate.Test
    Karate putUser() {
        return Karate.run("put").relativeTo(getClass());
    }
}
