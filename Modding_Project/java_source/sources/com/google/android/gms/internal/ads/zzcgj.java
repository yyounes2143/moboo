package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.vungle.ads.internal.Constants;
import java.io.File;
import java.util.Collections;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzcgj extends zzcfj {
    public zzcgj(zzcfb zzcfbVar, zzbbt zzbbtVar, boolean z, @Nullable zzece zzeceVar) {
        super(zzcfbVar, zzbbtVar, z, new zzbso(zzcfbVar, zzcfbVar.zzE(), new zzbcd(zzcfbVar.getContext())), null, zzeceVar);
    }

    @Nullable
    public final WebResourceResponse zzY(WebView webView, String str, @Nullable Map map) {
        String str2;
        if (!(webView instanceof zzcfb)) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzcfb zzcfbVar = (zzcfb) webView;
        zzbxv zzbxvVar = this.zza;
        if (zzbxvVar != null) {
            zzbxvVar.zze(str, map, 1);
        }
        zzfqh.zza();
        zzfqn zzfqnVar = zzfqn.zza;
        if (!Constants.AD_MRAID_JS_FILE_NAME.equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.EMPTY_MAP;
            }
            return super.zzc(str, map);
        }
        if (zzcfbVar.zzN() != null) {
            zzcfbVar.zzN().zzI();
        }
        if (zzcfbVar.zzO().zzi()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzad);
        } else if (zzcfbVar.zzaF()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzac);
        } else {
            str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzab);
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        return com.google.android.gms.ads.internal.util.zzs.zzy(zzcfbVar.getContext(), zzcfbVar.zzm().afmaVersion, str2);
    }
}
