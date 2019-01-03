package com.home.androidservices;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import android.util.Log;
import android.app.IntentService;
import android.app.Service;
import android.content.Intent;
import android.app.Activity;



/** AndroidServicesPlugin */
public class AndroidServicesPlugin implements MethodCallHandler {
    private final Activity activity;
   private static final String TAG = "MethodCallHandler";
  /** Plugin registration. */
  private AndroidServicesPlugin(Activity activity) {
      this.activity = activity;
  }
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "android_services_plugin");
    channel.setMethodCallHandler(new AndroidServicesPlugin(registrar.activity()));
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getPlatformVersion")) {
      result.success("Android " + android.os.Build.VERSION.RELEASE);
    } else if (call.method.equals("startCustomService")) {
      Log.d(TAG, "startCustomService");
     Intent intent = new Intent(activity, HelloIntentService.class);
     activity.startService(intent);

      result.success("startCustomService: OK");
    } else {
      result.notImplemented();
    }
  }
}
