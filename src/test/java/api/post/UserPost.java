package api.post;

import com.intuit.karate.junit5.Karate;

public class UserPost {
    @Karate.Test
    Karate postUser(){
        return Karate.run("post").relativeTo(getClass());
    }
}
