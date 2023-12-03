package api.get;

import com.intuit.karate.junit5.Karate;

class GetRunner{
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("get").relativeTo(getClass());
    }    

}
