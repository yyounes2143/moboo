package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzwl implements zzza {
    public long zza;
    public long zzb;
    @Nullable
    public zzyz zzc;
    @Nullable
    public zzwl zzd;

    public zzwl(long j, int i) {
        zze(j, 65536);
    }

    public final int zza(long j) {
        long j2 = j - this.zza;
        int i = this.zzc.zzb;
        return (int) j2;
    }

    public final zzwl zzb() {
        this.zzc = null;
        zzwl zzwlVar = this.zzd;
        this.zzd = null;
        return zzwlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzza
    public final zzyz zzc() {
        zzyz zzyzVar = this.zzc;
        zzyzVar.getClass();
        return zzyzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzza
    @Nullable
    public final zzza zzd() {
        zzwl zzwlVar = this.zzd;
        if (zzwlVar != null && zzwlVar.zzc != null) {
            return zzwlVar;
        }
        return null;
    }

    public final void zze(long j, int i) {
        boolean z;
        if (this.zzc == null) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        this.zza = j;
        this.zzb = j + 65536;
    }
}
