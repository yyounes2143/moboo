package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbca;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeyr implements zzezl {
    private final zzezl zza;
    private final zzezl zzb;
    private final zzfey zzc;
    private final String zzd;
    private zzcuz zze;
    private final Executor zzf;

    public zzeyr(zzezl zzezlVar, zzezl zzezlVar2, zzfey zzfeyVar, String str, Executor executor) {
        this.zza = zzezlVar;
        this.zzb = zzezlVar2;
        this.zzc = zzfeyVar;
        this.zzd = str;
        this.zzf = executor;
    }

    public static /* synthetic */ ListenableFuture zzb(final zzeyr zzeyrVar, zzezm zzezmVar, zzeyq zzeyqVar, zzezk zzezkVar, zzcuz zzcuzVar, zzeyw zzeywVar) {
        if (zzeywVar != null) {
            zzeyq zzeyqVar2 = new zzeyq(zzeyqVar.zza, zzeyqVar.zzb, zzeyqVar.zzc, zzeyqVar.zzd, zzeyqVar.zze, zzeyqVar.zzf, zzeywVar.zza);
            zzfel zzfelVar = zzeywVar.zzc;
            if (zzfelVar != null) {
                zzeyrVar.zze = null;
                zzeyrVar.zzc.zzf(zzeyqVar2);
                return zzeyrVar.zzg(zzfelVar, zzezmVar);
            }
            zzfey zzfeyVar = zzeyrVar.zzc;
            ListenableFuture zza = zzfeyVar.zza(zzeyqVar2);
            if (zza != null) {
                zzeyrVar.zze = null;
                return zzgcy.zzn(zza, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzeyn
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        return zzeyr.zze(zzeyr.this, (zzfev) obj);
                    }
                }, zzeyrVar.zzf);
            }
            zzfeyVar.zzf(zzeyqVar2);
            zzezmVar = new zzezm(zzezmVar.zzb, zzeywVar.zzb);
        }
        ListenableFuture zzb = ((zzezb) zzeyrVar.zza).zzb(zzezmVar, zzezkVar, zzcuzVar);
        zzeyrVar.zze = zzcuzVar;
        return zzb;
    }

    public static /* synthetic */ ListenableFuture zze(zzeyr zzeyrVar, zzfev zzfevVar) {
        zzfel zzfelVar;
        zzfex zzfexVar;
        if (zzfevVar != null && (zzfelVar = zzfevVar.zza) != null && (zzfexVar = zzfevVar.zzb) != null) {
            zzbca.zzb.zzc zzd = zzbca.zzb.zzd();
            zzbca.zzb.zza.C0043zza zza = zzbca.zzb.zza.zza();
            zza.zzf(zzbca.zzb.zzd.IN_MEMORY);
            zza.zzh(zzbca.zzb.zze.zzi());
            zzd.zzd(zza);
            zzfelVar.zza.zzb().zzc().zzm(zzd.zzbr());
            return zzeyrVar.zzg(zzfelVar, ((zzeyq) zzfexVar).zzb);
        }
        throw new zzdwf(1, "Empty prefetch");
    }

    private final ListenableFuture zzg(zzfel zzfelVar, zzezm zzezmVar) {
        zzcuz zzcuzVar = zzfelVar.zza;
        this.zze = zzcuzVar;
        if (zzfelVar.zzc != null) {
            if (zzcuzVar.zze() != null) {
                zzfelVar.zzc.zzo().zzl(zzfelVar.zza.zze());
            }
            return zzgcy.zzh(zzfelVar.zzc);
        }
        zzcuzVar.zzb().zzk(zzfelVar.zzb);
        return ((zzezb) this.zza).zzb(zzezmVar, null, zzfelVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    /* renamed from: zza */
    public final synchronized zzcuz zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzezm zzezmVar, zzezk zzezkVar, Object obj) {
        return zzf(zzezmVar, zzezkVar, null);
    }

    public final synchronized ListenableFuture zzf(final zzezm zzezmVar, final zzezk zzezkVar, zzcuz zzcuzVar) {
        zzcuy zza = zzezkVar.zza(zzezmVar.zzb);
        zza.zza(new zzeys(this.zzd));
        final zzcuz zzcuzVar2 = (zzcuz) zza.zzh();
        zzcuzVar2.zzf();
        zzcuzVar2.zzf();
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzcuzVar2.zzf().zzd;
        if (zzmVar.zzs == null && zzmVar.zzx == null) {
            zzfcp zzf = zzcuzVar2.zzf();
            com.google.android.gms.ads.internal.client.zzm zzmVar2 = zzf.zzd;
            String str = zzf.zzf;
            com.google.android.gms.ads.internal.client.zzx zzxVar = zzf.zzj;
            Executor executor = this.zzf;
            final zzeyq zzeyqVar = new zzeyq(zzezkVar, zzezmVar, zzmVar2, str, executor, zzxVar, null);
            return (zzgcp) zzgcy.zzn(zzgcp.zzw(((zzeyx) this.zzb).zzb(zzezmVar, zzezkVar, zzcuzVar2)), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzeyo
                @Override // com.google.android.gms.internal.ads.zzgcf
                public final ListenableFuture zza(Object obj) {
                    return zzeyr.zzb(zzeyr.this, zzezmVar, zzeyqVar, zzezkVar, zzcuzVar2, (zzeyw) obj);
                }
            }, executor);
        }
        this.zze = zzcuzVar2;
        return ((zzezb) this.zza).zzb(zzezmVar, zzezkVar, zzcuzVar2);
    }
}
