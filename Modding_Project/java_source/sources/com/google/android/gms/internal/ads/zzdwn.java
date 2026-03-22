package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdwn {
    private final zzgdj zza;
    private final zzgdj zzb;
    private final zzdxx zzc;
    private final zzhfp zzd;

    public zzdwn(zzgdj zzgdjVar, zzgdj zzgdjVar2, zzdxx zzdxxVar, zzhfp zzhfpVar) {
        this.zza = zzgdjVar;
        this.zzb = zzgdjVar2;
        this.zzc = zzdxxVar;
        this.zzd = zzhfpVar;
    }

    public static /* synthetic */ zzdyr zza(zzdwn zzdwnVar, zzbvl zzbvlVar) {
        return (zzdyr) zzdwnVar.zzc.zza(zzbvlVar).get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfP)).intValue(), TimeUnit.SECONDS);
    }

    public static /* synthetic */ ListenableFuture zzb(zzdwn zzdwnVar, final zzbvl zzbvlVar, int i, zzdyq zzdyqVar) {
        Bundle bundle;
        if (zzbvlVar != null && (bundle = zzbvlVar.zzm) != null) {
            bundle.putBoolean("ls", true);
        }
        return zzgcy.zzn(((zzdzu) zzdwnVar.zzd.zzb()).zzc(zzbvlVar, i), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdwj
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzgcy.zzh(new zzdyr((InputStream) obj, zzbvl.this));
            }
        }, zzdwnVar.zzb);
    }

    public final ListenableFuture zzc(final zzbvl zzbvlVar) {
        ListenableFuture zzf;
        String str = zzbvlVar.zzd;
        com.google.android.gms.ads.internal.zzv.zzr();
        if (com.google.android.gms.ads.internal.util.zzs.zzD(str)) {
            zzf = zzgcy.zzg(new zzdyq(1));
        } else {
            zzf = zzgcy.zzf(this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwk
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzdwn.zza(zzdwn.this, zzbvlVar);
                }
            }), ExecutionException.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdwl
                @Override // com.google.android.gms.internal.ads.zzgcf
                public final ListenableFuture zza(Object obj) {
                    Throwable th = (ExecutionException) obj;
                    if (th.getCause() != null) {
                        th = th.getCause();
                    }
                    return zzgcy.zzg(th);
                }
            }, this.zzb);
        }
        final int callingUid = Binder.getCallingUid();
        return zzgcy.zzf(zzf, zzdyq.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdwm
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzdwn.zzb(zzdwn.this, zzbvlVar, callingUid, (zzdyq) obj);
            }
        }, this.zzb);
    }
}
