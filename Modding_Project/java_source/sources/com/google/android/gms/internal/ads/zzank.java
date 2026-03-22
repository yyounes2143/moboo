package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzank implements zzans {
    private zzz zza;
    private zzer zzb;
    private zzaet zzc;

    public zzank(String str, String str2) {
        zzx zzxVar = new zzx();
        zzxVar.zzE(MimeTypes.VIDEO_MP2T);
        zzxVar.zzad(str);
        this.zza = zzxVar.zzaj();
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zza(zzek zzekVar) {
        zzdc.zzb(this.zzb);
        String str = zzeu.zza;
        long zze = this.zzb.zze();
        long zzf = this.zzb.zzf();
        if (zze != -9223372036854775807L && zzf != -9223372036854775807L) {
            zzz zzzVar = this.zza;
            if (zzf != zzzVar.zzt) {
                zzx zzb = zzzVar.zzb();
                zzb.zzah(zzf);
                zzz zzaj = zzb.zzaj();
                this.zza = zzaj;
                this.zzc.zzm(zzaj);
            }
            int zza = zzekVar.zza();
            this.zzc.zzr(zzekVar, zza);
            this.zzc.zzt(zze, 1, zza, 0, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zzb(zzer zzerVar, zzadq zzadqVar, zzaof zzaofVar) {
        this.zzb = zzerVar;
        zzaofVar.zzc();
        zzaet zzw = zzadqVar.zzw(zzaofVar.zza(), 5);
        this.zzc = zzw;
        zzw.zzm(this.zza);
    }
}
