package api.delete;

import com.intuit.karate.junit5.Karate;

public class DeleteUser {
    @Karate.Test
    Karate deleteUser() {
        return Karate.run("delete").relativeTo(getClass());
    }
}
