package com.example.flutter_native_example.services

import android.Manifest
import android.annotation.SuppressLint
import android.content.Context
import android.content.pm.PackageManager
import android.location.Geocoder
import android.location.Location
import android.os.Looper
import androidx.core.app.ActivityCompat
import com.google.android.gms.location.*
import com.example.flutter_native_example.utils.Logger
import java.util.Locale

class GpsService(private val context: Context) {

    private val fusedLocationProviderClient = LocationServices.getFusedLocationProviderClient(context)

    @SuppressLint("MissingPermission")
    fun getCurrentLocation(
        onSuccess: (latitude: Double, longitude: Double, city: String?) -> Unit,
        onError: (error: String) -> Unit
    ) {
        if (ActivityCompat.checkSelfPermission(context, Manifest.permission.ACCESS_FINE_LOCATION)
            != PackageManager.PERMISSION_GRANTED
        ) {
            onError("Permission ACCESS_FINE_LOCATION not granted")
            return
        }

        val locationRequest = LocationRequest.Builder(
            Priority.PRIORITY_HIGH_ACCURACY,
            1000L
        ).setMaxUpdates(1).build()

        fusedLocationProviderClient.requestLocationUpdates(
            locationRequest,
            object : LocationCallback() {
                override fun onLocationResult(result: LocationResult) {
                    val location: Location? = result.lastLocation
                    if (location != null) {
                        val latitude = location.latitude
                        val longitude = location.longitude

                        var cityName: String? = null
                        try {
                            val geocoder = Geocoder(context, Locale.getDefault())
                            val addresses = geocoder.getFromLocation(latitude, longitude, 1)
                            if (addresses != null && addresses.isNotEmpty()) {
                                cityName = addresses[0].locality // también podés usar `subAdminArea`, `adminArea`, `countryName`, etc.
                            }
                        } catch (e: Exception) {
                            Logger.log("Geocoder failed: ${e.localizedMessage}")
                        }

                        onSuccess(latitude, longitude, cityName)
                        Logger.log("Location obtained: $latitude, $longitude (City: $cityName)")
                    } else {
                        onError("Location is null")
                    }
                }
            },
            Looper.getMainLooper()
        )
    }
}
