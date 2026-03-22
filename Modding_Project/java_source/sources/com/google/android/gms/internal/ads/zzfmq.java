package com.google.android.gms.internal.ads;

import android.webkit.WebView;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfmq implements Runnable {
    final /* synthetic */ zzfmr zza;
    private final WebView zzb;

    public zzfmq(zzfmr zzfmrVar) {
        WebView webView;
        this.zza = zzfmrVar;
        webView = zzfmrVar.zza;
        this.zzb = webView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.destroy();
    }
}
