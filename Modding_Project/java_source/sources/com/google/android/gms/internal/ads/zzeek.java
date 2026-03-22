package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeek implements zzedl {
    private final Context zza;
    private final zzcpu zzb;
    private final Executor zzc;

    public zzeek(Context context, zzcpu zzcpuVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcpuVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, final zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        final View zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzie)).booleanValue() && zzfbuVar.zzag) {
            zzbpu zzc = ((zzfdn) zzediVar.zzb).zzc();
            if (zzc != null) {
                try {
                    zza = (View) ObjectWrapper.unwrap(zzc.zze());
                    boolean zzf = zzc.zzf();
                    if (zza != null) {
                        if (zzf) {
                            try {
                                zza = (View) zzgcy.zzn(zzgcy.zzh(null), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzeei
                                    @Override // com.google.android.gms.internal.ads.zzgcf
                                    public final ListenableFuture zza(Object obj) {
                                        ListenableFuture zzh;
                                        zzh = zzgcy.zzh(zzcqj.zza(zzeek.this.zza, zza, zzfbuVar));
                                        return zzh;
                                    }
                                }, zzcaa.zzf).get();
                            } catch (InterruptedException | ExecutionException e) {
                                throw new zzfcw(e);
                            }
                        }
                    } else {
                        throw new zzfcw(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                    }
                } catch (RemoteException e2) {
                    throw new zzfcw(e2);
                }
            } else {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzfcw(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
        } else {
            zza = ((zzfdn) zzediVar.zzb).zza();
        }
        zzcpu zzcpuVar = this.zzb;
        zzcrn zzcrnVar = new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza);
        final zzfdn zzfdnVar = (zzfdn) zzediVar.zzb;
        Objects.requireNonNull(zzfdnVar);
        zzcoq zza2 = zzcpuVar.zza(zzcrnVar, new zzcow(zza, null, new zzcqv() { // from class: com.google.android.gms.internal.ads.zzeej
            @Override // com.google.android.gms.internal.ads.zzcqv
            public final com.google.android.gms.ads.internal.client.zzea zza() {
                return zzfdn.this.zzb();
            }
        }, (zzfbv) zzfbuVar.zzu.get(0)));
        zza2.zzh().zza(zza);
        zza2.zzd().zzo(new zzcmd(zzfdnVar), this.zzc);
        ((zzeew) zzediVar.zzc).zzc(zza2.zzk());
        return zza2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        com.google.android.gms.ads.internal.client.zzr zza;
        zzfcp zzfcpVar = zzfcgVar.zza.zza;
        com.google.android.gms.ads.internal.client.zzr zzrVar = zzfcpVar.zze;
        if (zzrVar.zzn) {
            zza = new com.google.android.gms.ads.internal.client.zzr(this.zza, com.google.android.gms.ads.zzc.zzd(zzrVar.zze, zzrVar.zzb));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzie)).booleanValue() && zzfbuVar.zzag) {
                zza = new com.google.android.gms.ads.internal.client.zzr(this.zza, com.google.android.gms.ads.zzc.zze(zzrVar.zze, zzrVar.zzb));
            } else {
                zza = zzfcv.zza(this.zza, zzfbuVar.zzu);
            }
        }
        com.google.android.gms.ads.internal.client.zzr zzrVar2 = zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzie)).booleanValue() && zzfbuVar.zzag) {
            ((zzfdn) zzediVar.zzb).zzn(this.zza, zzrVar2, zzfcpVar.zzd, zzfbuVar.zzv.toString(), com.google.android.gms.ads.internal.util.zzbs.zzm(zzfbuVar.zzs), (zzbpr) zzediVar.zzc);
            return;
        }
        ((zzfdn) zzediVar.zzb).zzm(this.zza, zzrVar2, zzfcpVar.zzd, zzfbuVar.zzv.toString(), com.google.android.gms.ads.internal.util.zzbs.zzm(zzfbuVar.zzs), (zzbpr) zzediVar.zzc);
    }
}
