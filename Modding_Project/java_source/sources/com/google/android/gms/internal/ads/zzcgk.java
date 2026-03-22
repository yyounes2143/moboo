package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
@TargetApi(21)
/* loaded from: classes4.dex */
public final class zzcgk extends zzcgj {
    public zzcgk(zzcfb zzcfbVar, zzbbt zzbbtVar, boolean z, @Nullable zzece zzeceVar) {
        super(zzcfbVar, zzbbtVar, z, zzeceVar);
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest != null && webResourceRequest.getUrl() != null) {
            return zzY(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
        }
        return null;
    }
}
