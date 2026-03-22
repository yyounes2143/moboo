package com.changdu.mobovideo.ad;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.changdu.mobovideo.R;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J1\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0018\u0010\u000b\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\bH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/changdu/mobovideo/ad/NativeAdInStoryFactory;", "Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;", "Landroid/view/LayoutInflater;", "layoutInflater", "<init>", "(Landroid/view/LayoutInflater;)V", "Lcom/google/android/gms/ads/nativead/NativeAd;", "nativeAd", "", "", "", "customOptions", "Lcom/google/android/gms/ads/nativead/NativeAdView;", "createNativeAd", "(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/util/Map;)Lcom/google/android/gms/ads/nativead/NativeAdView;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/view/LayoutInflater;", "getLayoutInflater", "()Landroid/view/LayoutInflater;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public class NativeAdInStoryFactory implements GoogleMobileAdsPlugin.NativeAdFactory {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LayoutInflater f5453Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public NativeAdInStoryFactory(@NotNull LayoutInflater layoutInflater) {
        this.f5453Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = layoutInflater;
    }

    @Override // io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin.NativeAdFactory
    @NotNull
    public NativeAdView createNativeAd(@NotNull NativeAd nativeAd, @Nullable Map<String, ? extends Object> map) {
        NativeAdView nativeAdView = (NativeAdView) this.f5453Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.inflate(R.layout.native_ad_instory, (ViewGroup) null);
        nativeAdView.setHeadlineView(nativeAdView.findViewById(R.id.ad_headline));
        nativeAdView.setIconView(nativeAdView.findViewById(R.id.ad_app_icon));
        nativeAdView.setBodyView(nativeAdView.findViewById(R.id.ad_advertiser));
        ((TextView) nativeAdView.getHeadlineView()).setText(nativeAd.getHeadline());
        if (nativeAd.getIcon() == null) {
            nativeAdView.getIconView().setVisibility(8);
        } else {
            ((ImageView) nativeAdView.getIconView()).setImageDrawable(nativeAd.getIcon().getDrawable());
            nativeAdView.getIconView().setVisibility(0);
        }
        if (nativeAd.getBody() == null) {
            nativeAdView.getBodyView().setVisibility(4);
        } else {
            nativeAdView.getBodyView().setVisibility(0);
            ((TextView) nativeAdView.getBodyView()).setText(nativeAd.getBody());
        }
        nativeAdView.setCallToActionView(nativeAdView);
        nativeAdView.setNativeAd(nativeAd);
        return nativeAdView;
    }
}
