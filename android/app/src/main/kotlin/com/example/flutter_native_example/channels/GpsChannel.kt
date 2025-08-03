package com.example.flutter_native_example.channels

import android.content.Context
import com.example.flutter_native_example.services.GpsService
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class GpsChannel(private val context: Context) : MethodChannel.MethodCallHandler {

    private val gpsService = GpsService(context)

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "getCurrentLocation" -> {
                gpsService.getCurrentLocation(
                    onSuccess = { lat, lon, city ->
                        result.success(
                            mapOf(
                                "latitude" to lat,
                                "longitude" to lon,
                                "city" to city
                            )
                        )
                    },
                    onError = { error ->
                        result.error("LOCATION_ERROR", error, null)
                    }
                )
            }
            else -> {
                result.notImplemented()
            }
        }
    }
}
