package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzege {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final zzcra zzc;
    private final zzegu zzd;
    private final zzfjn zze;
    private final zzgds zzf = zzgds.zze();
    private final AtomicBoolean zzg = new AtomicBoolean();
    private zzegf zzh;
    private zzfcg zzi;

    public zzege(Executor executor, ScheduledExecutorService scheduledExecutorService, zzcra zzcraVar, zzegu zzeguVar, zzfjn zzfjnVar) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = zzcraVar;
        this.zzd = zzeguVar;
        this.zze = zzfjnVar;
    }

    private final synchronized ListenableFuture zzd(zzfbu zzfbuVar) {
        for (String str : zzfbuVar.zza) {
            zzedf zza = this.zzc.zza(zzfbuVar.zzb, str);
            if (zza != null && zza.zzb(this.zzi, zzfbuVar)) {
                ListenableFuture zza2 = zza.zza(this.zzi, zzfbuVar);
                int i = zzfbuVar.zzR;
                return zzgcy.zzo(zza2, i, TimeUnit.MILLISECONDS, this.zzb);
            }
        }
        return zzgcy.zzg(new zzdwf(3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(@Nullable zzfbu zzfbuVar) {
        ListenableFuture zzd = zzd(zzfbuVar);
        this.zzd.zzf(this.zzi, zzfbuVar, zzd, this.zze);
        zzgcy.zzr(zzd, new zzegd(this, zzfbuVar), this.zza);
    }

    public final synchronized ListenableFuture zzb(zzfcg zzfcgVar) {
        try {
            if (!this.zzg.getAndSet(true)) {
                List list = zzfcgVar.zzb.zza;
                if (list.isEmpty()) {
                    this.zzf.zzd(new zzegy(3, zzehb.zzc(zzfcgVar)));
                } else {
                    this.zzi = zzfcgVar;
                    zzegu zzeguVar = this.zzd;
                    this.zzh = new zzegf(zzfcgVar, zzeguVar, this.zzf);
                    zzeguVar.zzk(list);
                    zzfbu zza = this.zzh.zza();
                    while (zza != null) {
                        zze(zza);
                        zza = this.zzh.zza();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzf;
    }
}
