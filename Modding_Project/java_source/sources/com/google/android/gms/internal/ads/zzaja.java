package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaja {
    public final zzajh zza;
    public final zzajk zzb;
    public final zzaet zzc;
    @Nullable
    public final zzaeu zzd;
    public int zze;

    public zzaja(zzajh zzajhVar, zzajk zzajkVar, zzaet zzaetVar) {
        zzaeu zzaeuVar;
        this.zza = zzajhVar;
        this.zzb = zzajkVar;
        this.zzc = zzaetVar;
        if ("audio/true-hd".equals(zzajhVar.zzg.zzo)) {
            zzaeuVar = new zzaeu();
        } else {
            zzaeuVar = null;
        }
        this.zzd = zzaeuVar;
    }
}
