package aula_karate.pokemon;

import com.intuit.karate.junit5.Karate;

class swRunner {
    
    @Karate.Test
    Karate testStarWars() {
        return Karate.run("pokemon").relativeTo(getClass());
    }    

}

