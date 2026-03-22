package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcyd extends zzdbo implements zzcwn, zzcxs {
    private final zzfbu zzb;
    private final AtomicBoolean zzc;
    private final zzfcg zzd;

    public zzcyd(Set set, zzfbu zzfbuVar, zzfcg zzfcgVar) {
        super(set);
        this.zzc = new AtomicBoolean();
        this.zzb = zzfbuVar;
        this.zzd = zzfcgVar;
    }

    private final void zzb() {
        final com.google.android.gms.ads.internal.client.zzt zztVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzic)).booleanValue() && this.zzc.compareAndSet(false, true) && (zztVar = this.zzb.zzae) != null && zztVar.zza == 3) {
            zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcyb
                @Override // com.google.android.gms.internal.ads.zzdbn
                public final void zza(Object obj) {
                    ((zzcyf) obj).zzh(com.google.android.gms.ads.internal.client.zzt.this);
                }
            });
        }
    }

    public final void zza(final com.google.android.gms.ads.internal.client.zzt zztVar) {
        if (com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzf(this.zzd) && this.zzb.zzaB) {
            zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcyc
                @Override // com.google.android.gms.internal.ads.zzdbn
                public final void zza(Object obj) {
                    ((zzcyf) obj).zzh(com.google.android.gms.ads.internal.client.zzt.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxs
    public final void zzg() {
        if (this.zzb.zzb == 1) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        int i = this.zzb.zzb;
        if (i != 2 && i != 5 && i != 4 && i != 6 && i != 7) {
            return;
        }
        zzb();
    }
}
