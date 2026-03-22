package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcgh {
    private final zzcgi zza;
    private final zzcgg zzb;

    public zzcgh(zzcgi zzcgiVar, zzcgg zzcggVar) {
        this.zzb = zzcggVar;
        this.zza = zzcgiVar;
    }

    public static /* synthetic */ void zza(zzcgh zzcghVar, String str) {
        Uri parse = Uri.parse(str);
        zzcfj zzaO = ((zzcga) zzcghVar.zzb.zza).zzaO();
        if (zzaO == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
            return;
        }
        zzaO.zzn(parse);
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            com.google.android.gms.ads.internal.util.zze.zza("Click string is empty, not proceeding.");
            return "";
        }
        zzcgi zzcgiVar = this.zza;
        zzavl zzI = ((zzcgo) zzcgiVar).zzI();
        if (zzI == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Signal utils is empty, ignoring.");
            return "";
        }
        zzavg zzc = zzI.zzc();
        if (zzc == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Signals object is empty, ignoring.");
            return "";
        } else if (zzcgiVar.getContext() == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Context is null, ignoring.");
            return "";
        } else {
            return zzc.zze(zzcgiVar.getContext(), str, ((zzcgq) zzcgiVar).zzF(), zzcgiVar.zzi());
        }
    }

    @JavascriptInterface
    public String getViewSignals() {
        zzcgi zzcgiVar = this.zza;
        zzavl zzI = ((zzcgo) zzcgiVar).zzI();
        if (zzI == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Signal utils is empty, ignoring.");
            return "";
        }
        zzavg zzc = zzI.zzc();
        if (zzc == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Signals object is empty, ignoring.");
            return "";
        } else if (zzcgiVar.getContext() == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Context is null, ignoring.");
            return "";
        } else {
            return zzc.zzh(zzcgiVar.getContext(), ((zzcgq) zzcgiVar).zzF(), zzcgiVar.zzi());
        }
    }

    @JavascriptInterface
    public void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("URL is empty, ignoring message");
            return;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgf
            @Override // java.lang.Runnable
            public final void run() {
                zzcgh.zza(zzcgh.this, str);
            }
        });
    }
}
