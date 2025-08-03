package com.example.flutter_native_example

import android.os.Bundle
import com.example.flutter_native_example.channels.GpsChannel
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "com.empresa.app/gps")
        channel.setMethodCallHandler(GpsChannel(this))
    }
}
