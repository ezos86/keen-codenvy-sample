package com.codenvy;

import java.util.Map;
import java.util.HashMap;
import io.keen.client.java.KeenClient;
import io.keen.client.java.exceptions.KeenException;

public class KeenIO {

    public void onInitialize() {
   
      String keenProjectId = "51e6875038433153ff000002";
      String writeKey = "f3097eaa409601a1fd08b6e7647dec2eae48982c5076e7e04adb63a0541d4223ffad8fa5c255034ab3a266f0ab5a86171ecdfb0b328011d819f4726e3de37068463de5769b8324ce60081a8f1c56541d119a161acdfd447044b79e1017eb963c808f38cdce89c098a70e18c4fc2caa58";
      String readKey = "250145b2d3da98e640a5b4860ee7222c1625ac9d17913a5bc6b8740ee8aba5ebbd7abcf5c0d747cc52c50f551bee73160d5dbc73fc76c48e85929ccb53511670e6940cac96ac793367c44d3ed72891164091a3259983ce69affc5175ca3523486330a623073961dae904667dea0b2e05";
      
      // initialize the Keen Client with your Project ID.
      KeenClient.initialize(keenProjectId,writeKey,readKey);

      // add an event "item"
      Map<String, Object> event = new HashMap<String, Object>();
      event.put("item", "Item2");
           
      

      // add it to the "purchases" collection in your Keen Project
      try {
         KeenClient.client().addEvent("purchaseitems", event, null, new MyCallback());
      } catch (KeenException e) {
         e.printStackTrace();
      }
    }
}
