package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbow {
    private final zzbnz zza;
    private ListenableFuture zzb;

    public zzbow(zzbnz zzbnzVar) {
        this.zza = zzbnzVar;
    }

    private final void zzd() {
        if (this.zzb == null) {
            final zzcaf zzcafVar = new zzcaf();
            this.zzb = zzcafVar;
            this.zza.zzb(null).zzj(new zzcaj() { // from class: com.google.android.gms.internal.ads.zzbot
                @Override // com.google.android.gms.internal.ads.zzcaj
                public final void zza(Object obj) {
                    zzcaf.this.zzc((zzboa) obj);
                }
            }, new zzcah() { // from class: com.google.android.gms.internal.ads.zzbou
                @Override // com.google.android.gms.internal.ads.zzcah
                public final void zza() {
                    zzcaf.this.zzd(new zzboc("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final zzboz zza(String str, zzbog zzbogVar, zzbof zzbofVar) {
        zzd();
        return new zzboz(this.zzb, "google.afma.activeView.handleUpdate", zzbogVar, zzbofVar);
    }

    public final void zzb(final String str, final zzbjw zzbjwVar) {
        zzd();
        this.zzb = zzgcy.zzn(this.zzb, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzbov
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                zzboa zzboaVar = (zzboa) obj;
                zzboaVar.zzq(str, zzbjwVar);
                return zzgcy.zzh(zzboaVar);
            }
        }, zzcaa.zzg);
    }

    public final void zzc(final String str, final zzbjw zzbjwVar) {
        this.zzb = zzgcy.zzm(this.zzb, new zzfur() { // from class: com.google.android.gms.internal.ads.zzbos
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                zzboa zzboaVar = (zzboa) obj;
                zzboaVar.zzr(str, zzbjwVar);
                return zzboaVar;
            }
        }, zzcaa.zzg);
    }
}
