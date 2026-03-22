package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzazr implements Runnable {
    final ValueCallback zza;
    final /* synthetic */ zzazj zzb;
    final /* synthetic */ WebView zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzazt zze;

    public zzazr(zzazt zzaztVar, final zzazj zzazjVar, final WebView webView, final boolean z) {
        this.zzb = zzazjVar;
        this.zzc = webView;
        this.zzd = z;
        this.zze = zzaztVar;
        this.zza = new ValueCallback() { // from class: com.google.android.gms.internal.ads.zzazq
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                zzazr.this.zze.zzc(zzazjVar, webView, (String) obj, z);
            }
        };
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView = this.zzc;
        if (webView.getSettings().getJavaScriptEnabled()) {
            try {
                webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zza);
            } catch (Throwable unused) {
                this.zza.onReceiveValue("");
            }
        }
    }
}
