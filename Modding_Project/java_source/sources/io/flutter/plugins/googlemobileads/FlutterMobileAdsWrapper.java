package io.flutter.plugins.googlemobileads;

import android.content.Context;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.webviewflutter.r0;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterMobileAdsWrapper {
    private static final String TAG = "FlutterMobileAdsWrapper";

    public void disableMediationInitialization(@NonNull Context context) {
        MobileAds.disableMediationAdapterInitialization(context);
    }

    public RequestConfiguration getRequestConfiguration() {
        return MobileAds.getRequestConfiguration();
    }

    public String getVersionString() {
        return MobileAds.getVersion().toString();
    }

    public void initialize(@NonNull final Context context, @NonNull final OnInitializationCompleteListener onInitializationCompleteListener) {
        new Thread(new Runnable() { // from class: io.flutter.plugins.googlemobileads.FlutterMobileAdsWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                MobileAds.initialize(context, onInitializationCompleteListener);
            }
        }).start();
    }

    public void openAdInspector(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        MobileAds.openAdInspector(context, onAdInspectorClosedListener);
    }

    public void openDebugMenu(Context context, String str) {
        MobileAds.openDebugMenu(context, str);
    }

    public void registerWebView(int i, FlutterEngine flutterEngine) {
        WebView Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(flutterEngine, i);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        MobileAds.registerWebView(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public void setAppMuted(boolean z) {
        MobileAds.setAppMuted(z);
    }

    public void setAppVolume(double d) {
        MobileAds.setAppVolume((float) d);
    }
}
