package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdoe implements zzbkn {
    private final zzcxa zza;
    @Nullable
    private final zzbwj zzb;
    private final String zzc;
    private final String zzd;

    public zzdoe(zzcxa zzcxaVar, zzfbu zzfbuVar) {
        this.zza = zzcxaVar;
        this.zzb = zzfbuVar.zzl;
        this.zzc = zzfbuVar.zzj;
        this.zzd = zzfbuVar.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzbkn
    @ParametersAreNonnullByDefault
    public final void zza(@Nullable zzbwj zzbwjVar) {
        int i;
        String str;
        zzbwj zzbwjVar2 = this.zzb;
        if (zzbwjVar2 != null) {
            zzbwjVar = zzbwjVar2;
        }
        if (zzbwjVar != null) {
            str = zzbwjVar.zza;
            i = zzbwjVar.zzb;
        } else {
            i = 1;
            str = "";
        }
        this.zza.zzd(new zzbvu(str, i), this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbkn
    public final void zzb() {
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzbkn
    public final void zzc() {
        this.zza.zzf();
    }
}
