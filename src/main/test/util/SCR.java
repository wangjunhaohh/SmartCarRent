package util;

import org.junit.Test;

import java.util.UUID;

public class SCR {
    @Test
    public void tokenLogin(){
        String token = UUID.randomUUID() + "";
        System.out.println(token);
    }
}
