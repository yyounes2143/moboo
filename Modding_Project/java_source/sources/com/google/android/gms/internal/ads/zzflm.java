package com.google.android.gms.internal.ads;

import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Timer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzflm {
    private final zzflo zza;
    private final WebView zzb;
    private zzfno zzc;
    private final HashMap zzd;
    private final zzfmb zze;

    private zzflm(zzflo zzfloVar, WebView webView, boolean z) {
        HashMap hashMap = new HashMap();
        this.zzd = hashMap;
        this.zze = new zzfmb();
        zzfmx.zza();
        this.zza = zzfloVar;
        this.zzb = webView;
        if (zza() != webView) {
            for (zzflb zzflbVar : hashMap.values()) {
                zzflbVar.zzd(webView);
            }
            this.zzc = new zzfno(webView);
        }
        if (WebViewFeature.isFeatureSupported(WebViewFeature.WEB_MESSAGE_LISTENER)) {
            zzh();
            WebViewCompat.addWebMessageListener(this.zzb, "omidJsSessionService", new HashSet(Arrays.asList(ProxyConfig.MATCH_ALL_SCHEMES)), new zzfll(this));
            return;
        }
        throw new UnsupportedOperationException("The JavaScriptSessionService cannot be supported in this WebView version.");
    }

    public static zzflm zzb(zzflo zzfloVar, WebView webView, boolean z) {
        return new zzflm(zzfloVar, webView, true);
    }

    public static /* bridge */ /* synthetic */ void zzc(zzflm zzflmVar, String str) {
        HashMap hashMap = zzflmVar.zzd;
        zzflb zzflbVar = (zzflb) hashMap.get(str);
        if (zzflbVar != null) {
            zzflbVar.zzc();
            hashMap.remove(str);
        }
    }

    public static /* bridge */ /* synthetic */ void zze(zzflm zzflmVar, String str) {
        zzflg zzflgVar = zzflg.DEFINED_BY_JAVASCRIPT;
        zzflj zzfljVar = zzflj.DEFINED_BY_JAVASCRIPT;
        zzfln zzflnVar = zzfln.JAVASCRIPT;
        zzflf zzflfVar = new zzflf(zzflc.zza(zzflgVar, zzfljVar, zzflnVar, zzflnVar, false), zzfld.zzb(zzflmVar.zza, zzflmVar.zzb, null, null), str);
        zzflmVar.zzd.put(str, zzflfVar);
        zzflfVar.zzd(zzflmVar.zza());
        for (zzfma zzfmaVar : zzflmVar.zze.zza()) {
            zzflfVar.zzb((View) zzfmaVar.zzb().get(), zzfmaVar.zza(), zzfmaVar.zzc());
        }
        zzflfVar.zze();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh() {
        WebViewCompat.removeWebMessageListener(this.zzb, "omidJsSessionService");
    }

    @Nullable
    public final View zza() {
        zzfno zzfnoVar = this.zzc;
        if (zzfnoVar == null) {
            return null;
        }
        return (View) zzfnoVar.get();
    }

    public final void zzf(View view, zzfli zzfliVar, @Nullable String str) {
        for (zzflb zzflbVar : this.zzd.values()) {
            zzflbVar.zzb(view, zzfliVar, "Ad overlay");
        }
        this.zze.zzb(view, zzfliVar, "Ad overlay");
    }

    public final void zzg(zzcfs zzcfsVar) {
        for (zzflb zzflbVar : this.zzd.values()) {
            zzflbVar.zzc();
        }
        Timer timer = new Timer();
        timer.schedule(new zzflk(this, zzcfsVar, timer), 1000L);
    }
}
