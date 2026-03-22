package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutionException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdzc {
    private final zzgdj zza;
    private final zzdyh zzb;
    private final zzhfp zzc;

    public zzdzc(zzgdj zzgdjVar, zzdyh zzdyhVar, zzhfp zzhfpVar) {
        this.zza = zzgdjVar;
        this.zzb = zzdyhVar;
        this.zzc = zzhfpVar;
    }

    private final ListenableFuture zzg(final zzbvl zzbvlVar, zzdzb zzdzbVar, final zzdzb zzdzbVar2, final zzgcf zzgcfVar) {
        ListenableFuture zzf;
        String str = zzbvlVar.zzd;
        com.google.android.gms.ads.internal.zzv.zzr();
        if (com.google.android.gms.ads.internal.util.zzs.zzD(str)) {
            zzf = zzgcy.zzg(new zzdyq(1));
        } else {
            zzf = zzgcy.zzf(zzdzbVar.zza(zzbvlVar), ExecutionException.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdza
                @Override // com.google.android.gms.internal.ads.zzgcf
                public final ListenableFuture zza(Object obj) {
                    Throwable th = (ExecutionException) obj;
                    if (th.getCause() != null) {
                        th = th.getCause();
                    }
                    return zzgcy.zzg(th);
                }
            }, this.zza);
        }
        zzgcp zzw = zzgcp.zzw(zzf);
        zzgcf zzgcfVar2 = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdyy
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzgcy.zzh(((zzdyr) obj).zzb());
            }
        };
        zzgdj zzgdjVar = this.zza;
        return (zzgcp) zzgcy.zzf((zzgcp) zzgcy.zzn((zzgcp) zzgcy.zzn(zzw, zzgcfVar2, zzgdjVar), zzgcfVar, zzgdjVar), zzdyq.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdyz
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                ListenableFuture zzn;
                zzdzc zzdzcVar = zzdzc.this;
                zzdyq zzdyqVar = (zzdyq) obj;
                zzn = zzgcy.zzn(zzdzbVar2.zza(zzbvlVar), zzgcfVar, zzdzcVar.zza);
                return zzn;
            }
        }, zzgdjVar);
    }

    public final ListenableFuture zze(final zzbvl zzbvlVar) {
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdyv
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                String str = new String(zzgas.zzb((InputStream) obj), StandardCharsets.UTF_8);
                zzbvl zzbvlVar2 = zzbvl.this;
                zzbvlVar2.zzj = str;
                return zzgcy.zzh(zzbvlVar2);
            }
        };
        final zzdyh zzdyhVar = this.zzb;
        Objects.requireNonNull(zzdyhVar);
        return zzg(zzbvlVar, new zzdzb() { // from class: com.google.android.gms.internal.ads.zzdyw
            @Override // com.google.android.gms.internal.ads.zzdzb
            public final ListenableFuture zza(zzbvl zzbvlVar2) {
                return zzdyh.this.zza(zzbvlVar2);
            }
        }, new zzdzb() { // from class: com.google.android.gms.internal.ads.zzdyx
            @Override // com.google.android.gms.internal.ads.zzdzb
            public final ListenableFuture zza(zzbvl zzbvlVar2) {
                ListenableFuture zzb;
                zzb = ((zzdzu) zzdzc.this.zzc.zzb()).zzb(zzbvlVar2, Binder.getCallingUid());
                return zzb;
            }
        }, zzgcfVar);
    }

    public final ListenableFuture zzf(zzbvl zzbvlVar) {
        return zzg(zzbvlVar, new zzdzb() { // from class: com.google.android.gms.internal.ads.zzdyt
            @Override // com.google.android.gms.internal.ads.zzdzb
            public final ListenableFuture zza(zzbvl zzbvlVar2) {
                ListenableFuture zzd;
                zzd = zzdzc.this.zzb.zzd(zzbvlVar2.zzh);
                return zzd;
            }
        }, new zzdzb() { // from class: com.google.android.gms.internal.ads.zzdyu
            @Override // com.google.android.gms.internal.ads.zzdzb
            public final ListenableFuture zza(zzbvl zzbvlVar2) {
                ListenableFuture zzj;
                zzj = ((zzdzu) zzdzc.this.zzc.zzb()).zzj(zzbvlVar2.zzh);
                return zzj;
            }
        }, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdys
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                InputStream inputStream = (InputStream) obj;
                return zzgcy.zzh(null);
            }
        });
    }
}
