package com.codenvy;

import io.keen.client.java.AddEventCallback;

public class MyCallback implements AddEventCallback {
    @Override
    public void onSuccess() {
        System.out.println("It worked!");
    }

    @Override
    public void onError(String responseBody) {
        System.out.println("It failed! Reason: " + responseBody);
    }
}