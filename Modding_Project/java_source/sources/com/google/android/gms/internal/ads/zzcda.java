package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcda extends com.google.android.gms.ads.internal.util.zzb {
    final zzcbw zza;
    final zzcdi zzb;
    private final String zzc;
    private final String[] zzd;

    public zzcda(zzcbw zzcbwVar, zzcdi zzcdiVar, String str, String[] strArr) {
        this.zza = zzcbwVar;
        this.zzb = zzcdiVar;
        this.zzc = str;
        this.zzd = strArr;
        com.google.android.gms.ads.internal.zzv.zzA().zzb(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        try {
            this.zzb.zzu(this.zzc, this.zzd);
        } finally {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzccz(this));
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzci)).booleanValue() && (this.zzb instanceof zzcdr)) {
            return zzcaa.zzf.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzccy
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Boolean valueOf;
                    valueOf = Boolean.valueOf(r0.zzb.zzw(r0.zzc, r0.zzd, zzcda.this));
                    return valueOf;
                }
            });
        }
        return super.zzb();
    }

    public final String zze() {
        return this.zzc;
    }
}
