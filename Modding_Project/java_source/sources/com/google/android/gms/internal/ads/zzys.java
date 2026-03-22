package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzys implements zzyq {
    private final zzyq zza;

    public zzys(zzyq zzyqVar) {
        this.zza = zzyqVar;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzys)) {
            return false;
        }
        return this.zza.equals(((zzys) obj).zza);
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public zzz zza(int i) {
        return this.zza.zza(i);
    }

    @Override // com.google.android.gms.internal.ads.zzyq
    public zzz zzb() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public zzbm zzc() {
        return this.zza.zzc();
    }

    public final zzyq zzd() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final int zze(int i) {
        return this.zza.zze(i);
    }

    @Override // com.google.android.gms.internal.ads.zzyq
    public final int zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final int zzg(int i) {
        return this.zza.zzg(i);
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final int zzh() {
        return this.zza.zzh();
    }
}
