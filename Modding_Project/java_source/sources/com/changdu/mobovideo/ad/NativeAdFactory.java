package com.changdu.mobovideo.ad;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.changdu.mobovideo.R;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class NativeAdFactory implements GoogleMobileAdsPlugin.NativeAdFactory {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LayoutInflater f5452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public NativeAdFactory(LayoutInflater layoutInflater) {
        this.f5452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = layoutInflater;
    }

    @Override // io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin.NativeAdFactory
    public NativeAdView createNativeAd(NativeAd nativeAd, Map<String, Object> map) {
        NativeAdView nativeAdView = (NativeAdView) this.f5452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.inflate(R.layout.native_ad, (ViewGroup) null);
        nativeAdView.setMediaView((MediaView) nativeAdView.findViewById(R.id.ad_media));
        nativeAdView.setHeadlineView(nativeAdView.findViewById(R.id.ad_headline));
        nativeAdView.setCallToActionView(nativeAdView.findViewById(R.id.ad_call_to_action));
        nativeAdView.setIconView(nativeAdView.findViewById(R.id.ad_app_icon));
        nativeAdView.setBodyView(nativeAdView.findViewById(R.id.ad_advertiser));
        ((TextView) nativeAdView.getHeadlineView()).setText(nativeAd.getHeadline());
        nativeAdView.getMediaView().setMediaContent(nativeAd.getMediaContent());
        if (nativeAd.getBody() == null) {
            nativeAdView.getBodyView().setVisibility(4);
        } else {
            nativeAdView.getBodyView().setVisibility(0);
            ((TextView) nativeAdView.getBodyView()).setText(nativeAd.getBody());
        }
        if (nativeAd.getCallToAction() == null) {
            nativeAdView.getCallToActionView().setVisibility(4);
        } else {
            nativeAdView.getCallToActionView().setVisibility(0);
            ((Button) nativeAdView.getCallToActionView()).setText(nativeAd.getCallToAction());
        }
        if (nativeAd.getIcon() == null) {
            nativeAdView.getIconView().setVisibility(8);
        } else {
            ((ImageView) nativeAdView.getIconView()).setImageDrawable(nativeAd.getIcon().getDrawable());
            nativeAdView.getIconView().setVisibility(0);
        }
        nativeAdView.setNativeAd(nativeAd);
        return nativeAdView;
    }
}
