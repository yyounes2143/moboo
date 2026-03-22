package com.applovin.applovin_max;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.ads.MaxAdView;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinMAXAdView implements PlatformView {
    private final int adViewId;
    private final MethodChannel channel;
    @Nullable
    private AppLovinMAXAdViewWidget widget;
    private static final Map<Integer, AppLovinMAXAdViewWidget> widgetInstances = new HashMap(2);
    private static final Map<Integer, AppLovinMAXAdViewWidget> preloadedWidgetInstances = new HashMap(2);

    public AppLovinMAXAdView(int i, String str, int i2, MaxAdFormat maxAdFormat, boolean z, boolean z2, @Nullable String str2, @Nullable String str3, @Nullable Map<String, Object> map, @Nullable Map<String, Object> map2, BinaryMessenger binaryMessenger, Context context) {
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "applovin_max/adview_" + i);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() { // from class: com.applovin.applovin_max.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public final void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                AppLovinMAXAdView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinMAXAdView.this, methodCall, result);
            }
        });
        AppLovinMAXAdViewWidget appLovinMAXAdViewWidget = preloadedWidgetInstances.get(Integer.valueOf(i2));
        this.widget = appLovinMAXAdViewWidget;
        if (appLovinMAXAdViewWidget != null && !appLovinMAXAdViewWidget.hasContainerView()) {
            AppLovinMAX.d("Mounting the preloaded AdView (" + i2 + ") for Ad Unit ID " + str);
            this.adViewId = i2;
            this.widget.setAutoRefreshEnabled(z2);
            this.widget.attachAdView(this);
            return;
        }
        AppLovinMAXAdViewWidget appLovinMAXAdViewWidget2 = new AppLovinMAXAdViewWidget(str, maxAdFormat, z, context);
        this.widget = appLovinMAXAdViewWidget2;
        int hashCode = appLovinMAXAdViewWidget2.hashCode();
        this.adViewId = hashCode;
        widgetInstances.put(Integer.valueOf(hashCode), this.widget);
        AppLovinMAX.d("Mounting a new AdView (" + hashCode + ") for Ad Unit ID " + str);
        this.widget.setPlacement(str2);
        this.widget.setCustomData(str3);
        this.widget.setExtraParameters(map);
        this.widget.setLocalExtraParameters(map2);
        this.widget.setAutoRefreshEnabled(z2);
        this.widget.attachAdView(this);
        this.widget.loadAd();
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinMAXAdView appLovinMAXAdView, MethodCall methodCall, MethodChannel.Result result) {
        appLovinMAXAdView.getClass();
        if ("startAutoRefresh".equals(methodCall.method)) {
            appLovinMAXAdView.widget.setAutoRefreshEnabled(true);
            result.success(null);
        } else if ("stopAutoRefresh".equals(methodCall.method)) {
            appLovinMAXAdView.widget.setAutoRefreshEnabled(false);
            result.success(null);
        } else {
            result.notImplemented();
        }
    }

    public static void destroyWidgetAdView(int i, MethodChannel.Result result) {
        Map<Integer, AppLovinMAXAdViewWidget> map = preloadedWidgetInstances;
        AppLovinMAXAdViewWidget appLovinMAXAdViewWidget = map.get(Integer.valueOf(i));
        if (appLovinMAXAdViewWidget == null) {
            result.error(AppLovinMAX.TAG, "No preloaded AdView found to destroy", null);
        } else if (appLovinMAXAdViewWidget.hasContainerView()) {
            result.error(AppLovinMAX.TAG, "Cannot destroy - the preloaded AdView is currently in use", null);
        } else {
            map.remove(Integer.valueOf(i));
            appLovinMAXAdViewWidget.detachAdView();
            appLovinMAXAdViewWidget.destroy();
            result.success(null);
        }
    }

    @Nullable
    public static MaxAdView getInstance(String str) {
        for (Map.Entry<Integer, AppLovinMAXAdViewWidget> entry : preloadedWidgetInstances.entrySet()) {
            if (entry.getValue().getAdUnitId().equals(str)) {
                return entry.getValue().getAdView();
            }
        }
        for (Map.Entry<Integer, AppLovinMAXAdViewWidget> entry2 : widgetInstances.entrySet()) {
            if (entry2.getValue().getAdUnitId().equals(str)) {
                return entry2.getValue().getAdView();
            }
        }
        return null;
    }

    public static void preloadWidgetAdView(String str, MaxAdFormat maxAdFormat, boolean z, @Nullable String str2, @Nullable String str3, @Nullable Map<String, Object> map, @Nullable Map<String, Object> map2, MethodChannel.Result result, Context context) {
        AppLovinMAXAdViewWidget appLovinMAXAdViewWidget = new AppLovinMAXAdViewWidget(str, maxAdFormat, z, true, context);
        preloadedWidgetInstances.put(Integer.valueOf(appLovinMAXAdViewWidget.hashCode()), appLovinMAXAdViewWidget);
        appLovinMAXAdViewWidget.setPlacement(str2);
        appLovinMAXAdViewWidget.setCustomData(str3);
        appLovinMAXAdViewWidget.setExtraParameters(map);
        appLovinMAXAdViewWidget.setLocalExtraParameters(map2);
        appLovinMAXAdViewWidget.loadAd();
        result.success(Integer.valueOf(appLovinMAXAdViewWidget.hashCode()));
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        AppLovinMAXAdViewWidget appLovinMAXAdViewWidget = this.widget;
        if (appLovinMAXAdViewWidget != null) {
            appLovinMAXAdViewWidget.detachAdView();
            if (this.widget == preloadedWidgetInstances.get(Integer.valueOf(this.adViewId))) {
                AppLovinMAX.d("Unmounting the preloaded AdView (" + this.adViewId + ") for Ad Unit ID " + this.widget.getAdUnitId());
                this.widget.setAutoRefreshEnabled(false);
            } else {
                AppLovinMAX.d("Unmounting the AdView (" + this.adViewId + ") to destroy for Ad Unit ID " + this.widget.getAdUnitId());
                widgetInstances.remove(Integer.valueOf(this.adViewId));
                this.widget.destroy();
            }
        }
        MethodChannel methodChannel = this.channel;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    @Nullable
    public View getView() {
        return this.widget;
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionLocked() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionUnlocked() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public void sendEvent(String str, Map<String, Object> map) {
        AppLovinMAX.getInstance().fireCallback(str, map, this.channel);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewDetached() {
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewAttached(@NonNull View view) {
    }
}
