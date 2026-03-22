package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcpr implements zzcwn {
    @Nullable
    private final zzcfb zza;
    private final zzdsd zzb;
    private final zzfbu zzc;

    public zzcpr(@Nullable zzcfb zzcfbVar, zzdsd zzdsdVar, zzfbu zzfbuVar) {
        this.zza = zzcfbVar;
        this.zzb = zzdsdVar;
        this.zzc = zzfbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        zzcfb zzcfbVar;
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzne)).booleanValue() && (zzcfbVar = this.zza) != null) {
            if (true != com.google.android.gms.ads.internal.util.zzac.zza(zzcfbVar.zzF())) {
                str = "0";
            } else {
                str = "1";
            }
            zzdsc zza = this.zzb.zza();
            zza.zzb("action", "hcp");
            zza.zzb("hcp", str);
            zza.zzc(this.zzc);
            zza.zzj();
        }
    }
}
