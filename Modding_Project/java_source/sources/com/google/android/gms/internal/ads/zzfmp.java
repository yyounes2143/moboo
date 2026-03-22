package com.google.android.gms.internal.ads;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfmp extends WebViewClient {
    final /* synthetic */ zzfmr zza;

    public zzfmp(zzfmr zzfmrVar) {
        this.zza = zzfmrVar;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        renderProcessGoneDetail.toString();
        String.valueOf(webView);
        zzfmr zzfmrVar = this.zza;
        if (zzfmrVar.zza() == webView) {
            zzfmrVar.zzn(null);
        }
        webView.destroy();
        return true;
    }
}
