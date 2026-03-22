package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzvo extends zzys {
    private final zzbm zza;

    public zzvo(zzyq zzyqVar, zzbm zzbmVar) {
        super(zzyqVar);
        this.zza = zzbmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final boolean equals(@Nullable Object obj) {
        if (super.equals(obj) && (obj instanceof zzvo)) {
            return this.zza.equals(((zzvo) obj).zza);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final int hashCode() {
        return (super.hashCode() * 31) + this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzys, com.google.android.gms.internal.ads.zzyv
    public final zzz zza(int i) {
        return this.zza.zzb(zzd().zze(i));
    }

    @Override // com.google.android.gms.internal.ads.zzys, com.google.android.gms.internal.ads.zzyq
    public final zzz zzb() {
        return this.zza.zzb(zzd().zzf());
    }

    @Override // com.google.android.gms.internal.ads.zzys, com.google.android.gms.internal.ads.zzyv
    public final zzbm zzc() {
        return this.zza;
    }
}
