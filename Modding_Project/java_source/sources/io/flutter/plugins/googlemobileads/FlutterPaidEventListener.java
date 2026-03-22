package io.flutter.plugins.googlemobileads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterPaidEventListener implements OnPaidEventListener {
    @NonNull
    private final FlutterAd ad;
    @NonNull
    private final AdInstanceManager manager;

    public FlutterPaidEventListener(@NonNull AdInstanceManager adInstanceManager, @NonNull FlutterAd flutterAd) {
        this.manager = adInstanceManager;
        this.ad = flutterAd;
    }

    @Override // com.google.android.gms.ads.OnPaidEventListener
    public void onPaidEvent(AdValue adValue) {
        this.manager.onPaidEvent(this.ad, new FlutterAdValue(adValue.getPrecisionType(), adValue.getCurrencyCode(), adValue.getValueMicros()));
    }
}
