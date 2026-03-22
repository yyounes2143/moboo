package com.applovin.applovin_max;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.mediation.MaxAdFormat;
import com.appsflyer.AdRevenueScheme;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinMAXAdViewFactory extends PlatformViewFactory {
    private final BinaryMessenger messenger;

    public AppLovinMAXAdViewFactory(BinaryMessenger binaryMessenger) {
        super(StandardMessageCodec.INSTANCE);
        this.messenger = binaryMessenger;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    @NonNull
    public PlatformView create(@Nullable Context context, int i, Object obj) {
        MaxAdFormat deviceSpecificBannerAdViewAdFormat;
        Integer num;
        int i2;
        String str;
        String str2;
        Map map;
        Map map2 = (Map) obj;
        String str3 = (String) map2.get(MintegralConstants.AD_UNIT_ID);
        if ("mrec".equals((String) map2.get(FirebaseAnalytics.Param.AD_FORMAT))) {
            deviceSpecificBannerAdViewAdFormat = MaxAdFormat.MREC;
        } else {
            deviceSpecificBannerAdViewAdFormat = AppLovinMAX.getDeviceSpecificBannerAdViewAdFormat(context);
        }
        MaxAdFormat maxAdFormat = deviceSpecificBannerAdViewAdFormat;
        Map map3 = null;
        if (map2.containsKey("ad_view_id")) {
            num = (Integer) map2.get("ad_view_id");
        } else {
            num = null;
        }
        if (num != null) {
            i2 = num.intValue();
        } else {
            i2 = 0;
        }
        int i3 = i2;
        Boolean bool = Boolean.TRUE;
        boolean equals = bool.equals(map2.get("is_adaptive_banner_enabled"));
        boolean equals2 = bool.equals(map2.get("is_auto_refresh_enabled"));
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
        return new AppLovinMAXAdView(i, str3, i3, maxAdFormat, equals, equals2, str, str2, map, map3, this.messenger, context);
    }
}
