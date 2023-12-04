package api.get;

import com.intuit.karate.junit5.Karate;

class apiTestsRunner{
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("apiTests").relativeTo(getClass());
    }    

}
