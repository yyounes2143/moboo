package com.applovin.applovin_max;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinMAXNativeAdView implements PlatformView, MaxAdRevenueListener {
    private static final int ADVERTISER_VIEW_TAG = 8;
    private static final int BODY_VIEW_TAG = 4;
    private static final int CALL_TO_ACTION_VIEW_TAG = 5;
    private static final int ICON_VIEW_TAG = 3;
    private static final int MEDIA_VIEW_CONTAINER_TAG = 2;
    private static final int TITLE_LABEL_TAG = 1;
    @Nullable
    private MaxNativeAdLoader adLoader;
    private final String adUnitId;
    @Nullable
    private View advertiserView;
    @Nullable
    private View bodyView;
    @Nullable
    private View callToActionView;
    private final MethodChannel channel;
    private final Context context;
    @Nullable
    private final String customData;
    @Nullable
    private final Map<String, Object> extraParameters;
    @Nullable
    private ImageView iconView;
    @Nullable
    private final Map<String, Object> localExtraParameters;
    @Nullable
    private RelativeLayout mediaViewContainer;
    @Nullable
    private MaxAd nativeAd;
    private final FrameLayout nativeAdView;
    @Nullable
    private FrameLayout optionsViewContainer;
    @Nullable
    private final String placement;
    private final AppLovinSdk sdk;
    @Nullable
    private View titleView;
    private final AtomicBoolean isLoading = new AtomicBoolean();
    private final List<View> clickableViews = new ArrayList();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class NativeAdListener extends MaxNativeAdListener {
        private NativeAdListener() {
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdClicked(@NonNull MaxAd maxAd) {
            AppLovinMAXNativeAdView.this.sendEvent("OnNativeAdClickedEvent", maxAd);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
            AppLovinMAXNativeAdView appLovinMAXNativeAdView = AppLovinMAXNativeAdView.this;
            appLovinMAXNativeAdView.handleAdLoadFailed("Failed to load native ad for Ad Unit ID " + str + " with error: " + maxError, maxError);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoaded(@Nullable MaxNativeAdView maxNativeAdView, @NonNull MaxAd maxAd) {
            AppLovinMAX.d("Native ad loaded: " + maxAd);
            if (maxNativeAdView != null) {
                AppLovinMAXNativeAdView.this.handleAdLoadFailed("Native ad is of template type, failing ad load...", null);
                return;
            }
            AppLovinMAXNativeAdView.this.maybeDestroyCurrentAd();
            AppLovinMAXNativeAdView.this.nativeAd = maxAd;
            AppLovinMAXNativeAdView.this.sendAdLoadedReactNativeEventForAd(maxAd.getNativeAd());
        }
    }

    public AppLovinMAXNativeAdView(int i, String str, @Nullable String str2, @Nullable String str3, @Nullable Map<String, Object> map, @Nullable Map<String, Object> map2, BinaryMessenger binaryMessenger, AppLovinSdk appLovinSdk, Context context) {
        this.adUnitId = str;
        this.placement = str2;
        this.customData = str3;
        this.sdk = appLovinSdk;
        this.context = context;
        this.extraParameters = map;
        this.localExtraParameters = map2;
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "applovin_max/nativeadview_" + i);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() { // from class: com.applovin.applovin_max.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public final void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                AppLovinMAXNativeAdView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinMAXNativeAdView.this, methodCall, result);
            }
        });
        this.nativeAdView = new FrameLayout(context);
        loadAd();
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinMAXNativeAdView appLovinMAXNativeAdView, MethodCall methodCall, MethodChannel.Result result) {
        appLovinMAXNativeAdView.getClass();
        if ("addTitleView".equals(methodCall.method)) {
            MaxAd maxAd = appLovinMAXNativeAdView.nativeAd;
            if (maxAd != null) {
                appLovinMAXNativeAdView.addTitleView(methodCall, maxAd);
            }
            result.success(null);
        } else if ("addAdvertiserView".equals(methodCall.method)) {
            MaxAd maxAd2 = appLovinMAXNativeAdView.nativeAd;
            if (maxAd2 != null) {
                appLovinMAXNativeAdView.addAdvertiserView(methodCall, maxAd2);
            }
            result.success(null);
        } else if ("addBodyView".equals(methodCall.method)) {
            MaxAd maxAd3 = appLovinMAXNativeAdView.nativeAd;
            if (maxAd3 != null) {
                appLovinMAXNativeAdView.addBodyView(methodCall, maxAd3);
            }
            result.success(null);
        } else if ("addCallToActionView".equals(methodCall.method)) {
            MaxAd maxAd4 = appLovinMAXNativeAdView.nativeAd;
            if (maxAd4 != null) {
                appLovinMAXNativeAdView.addCallToActionView(methodCall, maxAd4);
            }
            result.success(null);
        } else if ("addIconView".equals(methodCall.method)) {
            MaxAd maxAd5 = appLovinMAXNativeAdView.nativeAd;
            if (maxAd5 != null) {
                appLovinMAXNativeAdView.addIconView(methodCall, maxAd5);
            }
            result.success(null);
        } else if ("addOptionsView".equals(methodCall.method)) {
            MaxAd maxAd6 = appLovinMAXNativeAdView.nativeAd;
            if (maxAd6 != null) {
                appLovinMAXNativeAdView.addOptionsView(methodCall, maxAd6);
            }
            result.success(null);
        } else if ("addMediaView".equals(methodCall.method)) {
            MaxAd maxAd7 = appLovinMAXNativeAdView.nativeAd;
            if (maxAd7 != null) {
                appLovinMAXNativeAdView.addMediaView(methodCall, maxAd7);
            }
            result.success(null);
        } else if ("renderAd".equals(methodCall.method)) {
            MaxAd maxAd8 = appLovinMAXNativeAdView.nativeAd;
            if (maxAd8 != null) {
                appLovinMAXNativeAdView.renderAd(maxAd8);
            }
            result.success(null);
        } else if ("loadAd".equals(methodCall.method)) {
            appLovinMAXNativeAdView.loadAd();
            result.success(null);
        } else {
            result.notImplemented();
        }
    }

    private void addAdvertiserView(MethodCall methodCall, MaxAd maxAd) {
        if (maxAd == null || maxAd.getNativeAd().getAdvertiser() == null) {
            return;
        }
        if (this.advertiserView == null) {
            FrameLayout frameLayout = new FrameLayout(this.context);
            this.advertiserView = frameLayout;
            this.nativeAdView.addView(frameLayout);
        }
        this.advertiserView.setTag(8);
        this.clickableViews.add(this.advertiserView);
        updateViewLayout(this.nativeAdView, this.advertiserView, getRect(methodCall));
    }

    private void addBodyView(MethodCall methodCall, MaxAd maxAd) {
        if (maxAd == null || maxAd.getNativeAd().getBody() == null) {
            return;
        }
        if (this.bodyView == null) {
            FrameLayout frameLayout = new FrameLayout(this.context);
            this.bodyView = frameLayout;
            this.nativeAdView.addView(frameLayout);
        }
        this.bodyView.setTag(4);
        this.clickableViews.add(this.bodyView);
        updateViewLayout(this.nativeAdView, this.bodyView, getRect(methodCall));
    }

    private void addCallToActionView(MethodCall methodCall, MaxAd maxAd) {
        if (maxAd == null || maxAd.getNativeAd().getCallToAction() == null) {
            return;
        }
        if (this.callToActionView == null) {
            FrameLayout frameLayout = new FrameLayout(this.context);
            this.callToActionView = frameLayout;
            this.nativeAdView.addView(frameLayout);
        }
        this.callToActionView.setTag(5);
        this.clickableViews.add(this.callToActionView);
        updateViewLayout(this.nativeAdView, this.callToActionView, getRect(methodCall));
    }

    private void addIconView(MethodCall methodCall, MaxAd maxAd) {
        if (maxAd != null) {
            MaxNativeAd.MaxNativeAdImage icon = maxAd.getNativeAd().getIcon();
            ImageView imageView = (ImageView) maxAd.getNativeAd().getIconView();
            if (icon == null && imageView == null) {
                ImageView imageView2 = this.iconView;
                if (imageView2 != null) {
                    imageView2.setImageDrawable(null);
                    return;
                }
                return;
            }
            if (this.iconView == null) {
                ImageView imageView3 = new ImageView(this.context);
                this.iconView = imageView3;
                this.nativeAdView.addView(imageView3);
            }
            this.iconView.setTag(3);
            this.clickableViews.add(this.iconView);
            updateViewLayout(this.nativeAdView, this.iconView, getRect(methodCall));
            if (icon != null) {
                if (icon.getUri() != null) {
                    AppLovinSdkUtils.setImageUrl(icon.getUri().toString(), this.iconView, this.sdk);
                } else if (icon.getDrawable() != null) {
                    this.iconView.setImageDrawable(icon.getDrawable());
                }
            } else if (imageView != null) {
                this.iconView.setImageDrawable(imageView.getDrawable());
            }
        }
    }

    private void addMediaView(MethodCall methodCall, MaxAd maxAd) {
        View mediaView;
        if (maxAd == null || (mediaView = maxAd.getNativeAd().getMediaView()) == null) {
            return;
        }
        if (this.mediaViewContainer == null) {
            RelativeLayout relativeLayout = new RelativeLayout(this.context);
            this.mediaViewContainer = relativeLayout;
            relativeLayout.setId(2);
            this.nativeAdView.addView(this.mediaViewContainer);
        }
        this.mediaViewContainer.setTag(2);
        this.clickableViews.add(this.mediaViewContainer);
        Rect rect = getRect(methodCall);
        if (mediaView.getParent() == null) {
            this.mediaViewContainer.addView(mediaView, new RelativeLayout.LayoutParams(-1, -1));
        }
        updateViewLayout(this.nativeAdView, this.mediaViewContainer, rect);
    }

    private void addOptionsView(MethodCall methodCall, MaxAd maxAd) {
        View optionsView;
        if (maxAd == null || (optionsView = maxAd.getNativeAd().getOptionsView()) == null) {
            return;
        }
        if (this.optionsViewContainer == null) {
            FrameLayout frameLayout = new FrameLayout(this.context);
            this.optionsViewContainer = frameLayout;
            this.nativeAdView.addView(frameLayout);
        }
        if (optionsView.getParent() == null) {
            this.optionsViewContainer.addView(optionsView);
            optionsView.getLayoutParams().height = -1;
            optionsView.getLayoutParams().width = -1;
        }
        updateViewLayout(this.nativeAdView, this.optionsViewContainer, getRect(methodCall));
    }

    private void addTitleView(MethodCall methodCall, MaxAd maxAd) {
        if (maxAd == null || maxAd.getNativeAd().getTitle() == null) {
            return;
        }
        if (this.titleView == null) {
            FrameLayout frameLayout = new FrameLayout(this.context);
            this.titleView = frameLayout;
            this.nativeAdView.addView(frameLayout);
        }
        this.titleView.setTag(1);
        this.clickableViews.add(this.titleView);
        updateViewLayout(this.nativeAdView, this.titleView, getRect(methodCall));
    }

    private Rect getRect(MethodCall methodCall) {
        int intValue = ((Integer) methodCall.argument("x")).intValue();
        int intValue2 = ((Integer) methodCall.argument("y")).intValue();
        return new Rect(intValue, intValue2, ((Integer) methodCall.argument("width")).intValue() + intValue, ((Integer) methodCall.argument("height")).intValue() + intValue2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAdLoadFailed(String str, @Nullable MaxError maxError) {
        this.isLoading.set(false);
        AppLovinMAX.e(str);
        AppLovinMAX.getInstance().fireCallback("OnNativeAdLoadFailedEvent", AppLovinMAX.getInstance().getAdLoadFailedInfo(this.adUnitId, maxError), this.channel);
    }

    private void loadAd() {
        if (this.isLoading.compareAndSet(false, true)) {
            AppLovinMAX.d("Loading a native ad for Ad Unit ID: " + this.adUnitId + "...");
            MaxNativeAdLoader maxNativeAdLoader = this.adLoader;
            if (maxNativeAdLoader == null || !this.adUnitId.equals(maxNativeAdLoader.getAdUnitId())) {
                MaxNativeAdLoader maxNativeAdLoader2 = new MaxNativeAdLoader(this.adUnitId, this.sdk, this.context);
                this.adLoader = maxNativeAdLoader2;
                maxNativeAdLoader2.setRevenueListener(this);
                this.adLoader.setNativeAdListener(new NativeAdListener());
            }
            this.adLoader.setPlacement(this.placement);
            this.adLoader.setCustomData(this.customData);
            Map<String, Object> map = this.extraParameters;
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    this.adLoader.setExtraParameter(entry.getKey(), (String) entry.getValue());
                }
            }
            Map<String, Object> map2 = this.localExtraParameters;
            if (map2 != null) {
                for (Map.Entry<String, Object> entry2 : map2.entrySet()) {
                    this.adLoader.setLocalExtraParameter(entry2.getKey(), entry2.getValue());
                }
            }
            this.adLoader.loadAd();
            return;
        }
        AppLovinMAX.e("Ignoring request to load native ad for Ad Unit ID " + this.adUnitId + ", another ad load in progress");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeDestroyCurrentAd() {
        if (this.nativeAd != null) {
            RelativeLayout relativeLayout = this.mediaViewContainer;
            if (relativeLayout != null) {
                relativeLayout.removeAllViews();
            }
            FrameLayout frameLayout = this.optionsViewContainer;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
            }
            this.adLoader.destroy(this.nativeAd);
            this.nativeAd = null;
        }
        this.clickableViews.clear();
    }

    private void renderAd(MaxAd maxAd) {
        MaxNativeAdLoader maxNativeAdLoader;
        if (maxAd != null && (maxNativeAdLoader = this.adLoader) != null) {
            maxNativeAdLoader.a(this.clickableViews, this.nativeAdView, maxAd);
            this.adLoader.b(maxAd);
        } else {
            AppLovinMAX.e("Attempting to render ad before ad has been loaded for Ad Unit ID " + this.adUnitId);
        }
        this.isLoading.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAdLoadedReactNativeEventForAd(MaxNativeAd maxNativeAd) {
        boolean z;
        boolean z2;
        HashMap hashMap = new HashMap(10);
        hashMap.put(CampaignEx.JSON_KEY_TITLE, maxNativeAd.getTitle());
        hashMap.put("advertiser", maxNativeAd.getAdvertiser());
        hashMap.put("body", maxNativeAd.getBody());
        hashMap.put("callToAction", maxNativeAd.getCallToAction());
        if (maxNativeAd.getStarRating() != null) {
            hashMap.put("starRating", maxNativeAd.getStarRating());
        }
        if (maxNativeAd.getMediaContentAspectRatio() > 0.0f) {
            hashMap.put("mediaContentAspectRatio", Float.valueOf(maxNativeAd.getMediaContentAspectRatio()));
        }
        boolean z3 = true;
        if (maxNativeAd.getIcon() == null && maxNativeAd.getIconView() == null) {
            z = false;
        } else {
            z = true;
        }
        hashMap.put("isIconImageAvailable", Boolean.valueOf(z));
        if (maxNativeAd.getOptionsView() != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        hashMap.put("isOptionsViewAvailable", Boolean.valueOf(z2));
        if (maxNativeAd.getMediaView() == null) {
            z3 = false;
        }
        hashMap.put("isMediaViewAvailable", Boolean.valueOf(z3));
        Map<String, Object> adInfo = AppLovinMAX.getInstance().getAdInfo(this.nativeAd);
        adInfo.put("nativeAd", hashMap);
        AppLovinMAX.getInstance().fireCallback("OnNativeAdLoadedEvent", adInfo, this.channel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEvent(String str, MaxAd maxAd) {
        AppLovinMAX.getInstance().fireCallback(str, maxAd, this.channel);
    }

    private void updateViewLayout(ViewGroup viewGroup, View view, Rect rect) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(rect.width(), rect.height());
        layoutParams.leftMargin = rect.left;
        layoutParams.topMargin = rect.top;
        viewGroup.updateViewLayout(view, layoutParams);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        maybeDestroyCurrentAd();
        View view = this.titleView;
        if (view != null) {
            this.nativeAdView.removeView(view);
        }
        View view2 = this.advertiserView;
        if (view2 != null) {
            this.nativeAdView.removeView(view2);
        }
        View view3 = this.bodyView;
        if (view3 != null) {
            this.nativeAdView.removeView(view3);
        }
        View view4 = this.callToActionView;
        if (view4 != null) {
            this.nativeAdView.removeView(view4);
        }
        ImageView imageView = this.iconView;
        if (imageView != null) {
            this.nativeAdView.removeView(imageView);
        }
        MaxNativeAdLoader maxNativeAdLoader = this.adLoader;
        if (maxNativeAdLoader != null) {
            maxNativeAdLoader.destroy();
            this.adLoader = null;
        }
        MethodChannel methodChannel = this.channel;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    @Nullable
    public View getView() {
        return this.nativeAdView;
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
        sendEvent("OnNativeAdRevenuePaidEvent", maxAd);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionLocked() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionUnlocked() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewDetached() {
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewAttached(@NonNull View view) {
    }
}
