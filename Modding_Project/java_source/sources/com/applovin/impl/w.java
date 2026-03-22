package com.applovin.impl;

import com.amazon.device.ads.DTBAdSize;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.vungle.ads.internal.protos.Sdk;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private final String f3795a;
    private final DTBAdSize b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        VIDEO,
        DISPLAY,
        INTERSTITIAL
    }

    public w(String str, JSONObject jSONObject, MaxAdFormat maxAdFormat) {
        this.f3795a = str;
        this.b = a(JsonUtils.getInt(jSONObject, "type", a(maxAdFormat).ordinal()), maxAdFormat, str);
    }

    public DTBAdSize a() {
        return this.b;
    }

    private a a(MaxAdFormat maxAdFormat) {
        return maxAdFormat.isAdViewAd() ? a.DISPLAY : a.INTERSTITIAL;
    }

    private DTBAdSize a(int i, MaxAdFormat maxAdFormat, String str) {
        try {
            if (a.VIDEO.ordinal() == i) {
                return new DTBAdSize.DTBVideo((int) Sdk.SDKError.Reason.WEBVIEW_ERROR_VALUE, (int) TXVodDownloadDataSource.QUALITY_480P, str);
            }
            if (a.DISPLAY.ordinal() == i) {
                return new DTBAdSize(maxAdFormat.getSize().getWidth(), maxAdFormat.getSize().getHeight(), str);
            }
            if (a.INTERSTITIAL.ordinal() == i) {
                return new DTBAdSize.DTBInterstitialAdSize(str);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
