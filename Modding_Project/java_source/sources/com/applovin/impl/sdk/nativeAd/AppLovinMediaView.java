package com.applovin.impl.sdk.nativeAd;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.StrictMode;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.applovin.impl.a7;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.l4;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.sdk.R;
/* compiled from: Proguard */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class AppLovinMediaView extends FrameLayout {
    protected final ImageView imageView;
    protected final o logger;
    protected final k sdk;

    public AppLovinMediaView(AppLovinNativeAdImpl appLovinNativeAdImpl, k kVar, Context context) {
        super(context);
        Uri uri;
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.sdk = kVar;
        this.logger = kVar.O();
        LayoutInflater.from(context).inflate(R.layout.applovin_native_ad_media_view, (ViewGroup) this, true);
        Uri mainImageUri = appLovinNativeAdImpl.getMainImageUri();
        a7 vastAd = appLovinNativeAdImpl.getVastAd();
        if (vastAd != null) {
            uri = vastAd.w0();
        } else {
            uri = null;
        }
        if (mainImageUri == null && uri == null) {
            throw new IllegalStateException("AppLovin native ad missing image AND video resources");
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (((Boolean) kVar.a(l4.z2)).booleanValue()) {
            setOnTouchListener(new AppLovinTouchToClickListener(kVar, l4.k0, context, appLovinNativeAdImpl));
        } else {
            setOnClickListener(appLovinNativeAdImpl);
        }
        ImageView imageView = (ImageView) findViewById(R.id.image_view);
        this.imageView = imageView;
        if (mainImageUri != null) {
            ImageViewUtils.setAndDownscaleImageUri(imageView, mainImageUri);
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    public void destroy() {
        setOnClickListener(null);
        setOnTouchListener(null);
        removeAllViews();
    }
}
