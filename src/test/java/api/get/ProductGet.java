package api.get;

import com.intuit.karate.junit5.Karate;

public class ProductGet {
    @Karate.Test
    Karate getProduct(){
        return Karate.run("get").relativeTo(getClass());
    }
}
