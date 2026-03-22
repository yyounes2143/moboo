package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcsb {
    private final zzdxu zza;
    private final zzfcp zzb;
    private final zzfgt zzc;
    private final zzclb zzd;
    private final zzehb zze;
    private final zzdbf zzf;
    @Nullable
    private zzfcg zzg;
    private final zzdzc zzh;
    private final zzcuw zzi;
    private final Executor zzj;
    private final zzdyn zzk;
    private final zzedk zzl;

    public zzcsb(zzdxu zzdxuVar, zzfcp zzfcpVar, zzfgt zzfgtVar, zzclb zzclbVar, zzehb zzehbVar, zzdbf zzdbfVar, @Nullable zzfcg zzfcgVar, zzdzc zzdzcVar, zzcuw zzcuwVar, Executor executor, zzdyn zzdynVar, zzedk zzedkVar) {
        this.zza = zzdxuVar;
        this.zzb = zzfcpVar;
        this.zzc = zzfgtVar;
        this.zzd = zzclbVar;
        this.zze = zzehbVar;
        this.zzf = zzdbfVar;
        this.zzg = zzfcgVar;
        this.zzh = zzdzcVar;
        this.zzi = zzcuwVar;
        this.zzj = executor;
        this.zzk = zzdynVar;
        this.zzl = zzedkVar;
    }

    public static /* synthetic */ zzfcg zzd(zzcsb zzcsbVar, zzfcg zzfcgVar) {
        zzcsbVar.zzd.zza(zzfcgVar);
        return zzfcgVar;
    }

    public static /* synthetic */ ListenableFuture zze(zzcsb zzcsbVar, zzfej zzfejVar, zzbvl zzbvlVar) {
        zzbvlVar.zzi = zzfejVar;
        return zzcsbVar.zzh.zze(zzbvlVar);
    }

    public final com.google.android.gms.ads.internal.client.zze zza(Throwable th) {
        return zzfdq.zzb(th, this.zzl);
    }

    public final zzdbf zzc() {
        return this.zzf;
    }

    public final ListenableFuture zzf(final zzfej zzfejVar) {
        zzffz zza = this.zzc.zzb(zzfgn.GET_CACHE_KEY, this.zzi.zzc()).zzf(new zzgcf() { // from class: com.google.android.gms.internal.ads.zzcrx
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzcsb.zze(zzcsb.this, zzfejVar, (zzbvl) obj);
            }
        }).zza();
        zzgcy.zzr(zza, new zzcrz(this), this.zzj);
        return zza;
    }

    public final ListenableFuture zzg(zzbvl zzbvlVar) {
        zzffz zza = this.zzc.zzb(zzfgn.NOTIFY_CACHE_HIT, this.zzh.zzf(zzbvlVar)).zza();
        zzgcy.zzr(zza, new zzcsa(this), this.zzj);
        return zza;
    }

    public final ListenableFuture zzh(ListenableFuture listenableFuture) {
        zzfgj zzf = this.zzc.zzb(zzfgn.RENDERER, listenableFuture).zze(new zzffx() { // from class: com.google.android.gms.internal.ads.zzcrw
            @Override // com.google.android.gms.internal.ads.zzffx
            public final Object zza(Object obj) {
                zzfcg zzfcgVar = (zzfcg) obj;
                zzcsb.zzd(zzcsb.this, zzfcgVar);
                return zzfcgVar;
            }
        }).zzf(this.zze);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfO)).booleanValue()) {
            zzf = zzf.zzi(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfP)).intValue(), TimeUnit.SECONDS);
        }
        return zzf.zza();
    }

    public final ListenableFuture zzi() {
        com.google.android.gms.ads.internal.client.zzm zzmVar = this.zzb.zzd;
        if (zzmVar.zzx == null && zzmVar.zzs == null) {
            return zzj(this.zzi.zzc());
        }
        zzfgt zzfgtVar = this.zzc;
        zzdxu zzdxuVar = this.zza;
        return zzfgd.zzc(zzdxuVar.zze(), zzfgn.PRELOADED_LOADER, zzfgtVar).zza();
    }

    public final ListenableFuture zzj(ListenableFuture listenableFuture) {
        zzfcg zzfcgVar = this.zzg;
        if (zzfcgVar != null) {
            zzfgt zzfgtVar = this.zzc;
            return zzfgd.zzc(zzgcy.zzh(zzfcgVar), zzfgn.SERVER_TRANSACTION, zzfgtVar).zza();
        }
        com.google.android.gms.ads.internal.zzv.zzc().zzj();
        zzfgj zzb = this.zzc.zzb(zzfgn.SERVER_TRANSACTION, listenableFuture);
        final zzdyn zzdynVar = this.zzk;
        Objects.requireNonNull(zzdynVar);
        return zzb.zzf(new zzgcf() { // from class: com.google.android.gms.internal.ads.zzcry
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzdyn.this.zzc((zzbvl) obj);
            }
        }).zza();
    }

    public final void zzk(zzfcg zzfcgVar) {
        this.zzg = zzfcgVar;
    }
}
