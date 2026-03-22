package com.google.android.gms.internal.ads;

import android.webkit.WebView;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfmd implements Runnable {
    final /* synthetic */ WebView zza;
    final /* synthetic */ String zzb;

    public zzfmd(zzfme zzfmeVar, WebView webView, String str) {
        this.zza = webView;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfme.zzk(this.zza, this.zzb);
    }
}
