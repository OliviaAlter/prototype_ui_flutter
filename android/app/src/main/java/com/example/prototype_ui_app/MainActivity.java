package com.example.prototype_ui_app;

import io.flutter.embedding.android.FlutterActivity;
import android.os.Bundle;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.embedding.engine.FlutterEngine;

public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(new FlutterEngine(this));
    }
}
