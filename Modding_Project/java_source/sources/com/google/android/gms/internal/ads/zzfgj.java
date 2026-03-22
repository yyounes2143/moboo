package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfgj {
    final /* synthetic */ zzfgl zza;
    private final Object zzb;
    @Nullable
    private final String zzc;
    private final ListenableFuture zzd;
    private final List zze;
    private final ListenableFuture zzf;

    private zzfgj(zzfgl zzfglVar, Object obj, String str, ListenableFuture listenableFuture, List list, ListenableFuture listenableFuture2) {
        this.zza = zzfglVar;
        this.zzb = obj;
        this.zzc = str;
        this.zzd = listenableFuture;
        this.zze = list;
        this.zzf = listenableFuture2;
    }

    public final zzffz zza() {
        zzfgm zzfgmVar;
        Object obj = this.zzb;
        String str = this.zzc;
        if (str == null) {
            str = this.zza.zzf(obj);
        }
        final zzffz zzffzVar = new zzffz(obj, str, this.zzf);
        zzfgmVar = this.zza.zzd;
        zzfgmVar.zza(zzffzVar);
        ListenableFuture listenableFuture = this.zzd;
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfgh
            @Override // java.lang.Runnable
            public final void run() {
                zzfgm zzfgmVar2;
                zzfgmVar2 = zzfgj.this.zza.zzd;
                zzfgmVar2.zzc(zzffzVar);
            }
        };
        zzgdj zzgdjVar = zzcaa.zzg;
        listenableFuture.addListener(runnable, zzgdjVar);
        zzgcy.zzr(zzffzVar, new zzfgi(this, zzffzVar), zzgdjVar);
        return zzffzVar;
    }

    public final zzfgj zzb(Object obj) {
        return this.zza.zzb(obj, zza());
    }

    public final zzfgj zzc(Class cls, zzgcf zzgcfVar) {
        zzgdj zzgdjVar;
        zzfgl zzfglVar = this.zza;
        zzgdjVar = zzfglVar.zzb;
        return new zzfgj(zzfglVar, this.zzb, this.zzc, this.zzd, this.zze, zzgcy.zzf(this.zzf, cls, zzgcfVar, zzgdjVar));
    }

    public final zzfgj zzd(final ListenableFuture listenableFuture) {
        return zzg(new zzgcf() { // from class: com.google.android.gms.internal.ads.zzfgg
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return ListenableFuture.this;
            }
        }, zzcaa.zzg);
    }

    public final zzfgj zze(final zzffx zzffxVar) {
        return zzf(new zzgcf() { // from class: com.google.android.gms.internal.ads.zzfgf
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzgcy.zzh(zzffx.this.zza(obj));
            }
        });
    }

    public final zzfgj zzf(zzgcf zzgcfVar) {
        zzgdj zzgdjVar;
        zzgdjVar = this.zza.zzb;
        return zzg(zzgcfVar, zzgdjVar);
    }

    public final zzfgj zzg(zzgcf zzgcfVar, Executor executor) {
        return new zzfgj(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzgcy.zzn(this.zzf, zzgcfVar, executor));
    }

    public final zzfgj zzh(String str) {
        return new zzfgj(this.zza, this.zzb, str, this.zzd, this.zze, this.zzf);
    }

    public final zzfgj zzi(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        zzfgl zzfglVar = this.zza;
        scheduledExecutorService = zzfglVar.zzc;
        return new zzfgj(zzfglVar, this.zzb, this.zzc, this.zzd, this.zze, zzgcy.zzo(this.zzf, j, timeUnit, scheduledExecutorService));
    }
}
