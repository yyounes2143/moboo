package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdwx implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzdwx(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* synthetic */ Object zzb() {
        final CookieManager zza = com.google.android.gms.ads.internal.zzv.zzs().zza((Context) this.zzb.zzb());
        zzfgn zzfgnVar = zzfgn.WEBVIEW_COOKIE;
        zzfgj zzi = zzfgd.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwr
            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = zza;
                if (cookieManager == null) {
                    return "";
                }
                return cookieManager.getCookie((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbc));
            }
        }, zzfgnVar, (zzfgt) this.zza.zzb()).zzi(1L, TimeUnit.SECONDS);
        final zzffx zzffxVar = new zzffx() { // from class: com.google.android.gms.internal.ads.zzdws
            @Override // com.google.android.gms.internal.ads.zzffx
            public final Object zza(Object obj) {
                Exception exc = (Exception) obj;
                return "";
            }
        };
        return zzi.zzc(Exception.class, new zzgcf(zzffxVar) { // from class: com.google.android.gms.internal.ads.zzfge
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                Exception exc = (Exception) ((Throwable) obj);
                return zzgcy.zzh("");
            }
        }).zza();
    }
}
