package com.applovin.applovin_max;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.sdk.AppLovinSdk;
import com.appsflyer.AdRevenueScheme;
import com.google.ads.mediation.mintegral.MintegralConstants;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinMAXNativeAdViewFactory extends PlatformViewFactory {
    private final BinaryMessenger messenger;

    public AppLovinMAXNativeAdViewFactory(BinaryMessenger binaryMessenger) {
        super(StandardMessageCodec.INSTANCE);
        this.messenger = binaryMessenger;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    @NonNull
    public PlatformView create(@Nullable Context context, int i, Object obj) {
        String str;
        String str2;
        Map map;
        AppLovinSdk sdk = AppLovinMAX.getInstance().getSdk();
        Map map2 = (Map) obj;
        String str3 = (String) map2.get(MintegralConstants.AD_UNIT_ID);
        AppLovinMAX.d("Creating MaxNativeAdView widget with Ad Unit ID: " + str3);
        Map map3 = null;
        if (map2.containsKey(AdRevenueScheme.PLACEMENT)) {
            str = (String) map2.get(AdRevenueScheme.PLACEMENT);
        } else {
            str = null;
        }
        if (map2.containsKey("custom_data")) {
            str2 = (String) map2.get("custom_data");
        } else {
            str2 = null;
        }
        if (map2.containsKey("extra_parameters")) {
            map = (Map) map2.get("extra_parameters");
        } else {
            map = null;
        }
        if (map2.containsKey("local_extra_parameters")) {
            map3 = (Map) map2.get("local_extra_parameters");
        }
        return new AppLovinMAXNativeAdView(i, str3, str, str2, map, map3, this.messenger, sdk, context);
    }
}
