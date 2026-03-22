package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgo implements zzgf {
    @Nullable
    private zzhg zzb;
    @Nullable
    private String zzc;
    private boolean zzf;
    private final zzha zza = new zzha();
    private int zzd = 8000;
    private int zze = 8000;

    public final zzgo zzb(boolean z) {
        this.zzf = true;
        return this;
    }

    public final zzgo zzc(int i) {
        this.zzd = i;
        return this;
    }

    public final zzgo zzd(int i) {
        this.zze = i;
        return this;
    }

    public final zzgo zze(@Nullable zzhg zzhgVar) {
        this.zzb = zzhgVar;
        return this;
    }

    public final zzgo zzf(@Nullable String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    /* renamed from: zzg */
    public final zzgt zza() {
        zzgt zzgtVar = new zzgt(this.zzc, this.zzd, this.zze, this.zzf, false, this.zza, null, false, null);
        zzhg zzhgVar = this.zzb;
        if (zzhgVar != null) {
            zzgtVar.zzf(zzhgVar);
        }
        return zzgtVar;
    }
}
