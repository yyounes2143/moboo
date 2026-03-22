package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfxo extends zzfxr {
    public zzfxo() {
        super(null);
    }

    public static final zzfxr zzf(int i) {
        zzfxr zzfxrVar;
        zzfxr zzfxrVar2;
        zzfxr zzfxrVar3;
        if (i < 0) {
            zzfxrVar3 = zzfxr.zzb;
            return zzfxrVar3;
        } else if (i > 0) {
            zzfxrVar2 = zzfxr.zzc;
            return zzfxrVar2;
        } else {
            zzfxrVar = zzfxr.zza;
            return zzfxrVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfxr
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfxr
    public final zzfxr zzb(int i, int i2) {
        return zzf(Integer.compare(i, i2));
    }

    @Override // com.google.android.gms.internal.ads.zzfxr
    public final zzfxr zzc(Object obj, Object obj2, Comparator comparator) {
        return zzf(comparator.compare(obj, obj2));
    }

    @Override // com.google.android.gms.internal.ads.zzfxr
    public final zzfxr zzd(boolean z, boolean z2) {
        return zzf(Boolean.compare(z, z2));
    }

    @Override // com.google.android.gms.internal.ads.zzfxr
    public final zzfxr zze(boolean z, boolean z2) {
        return zzf(Boolean.compare(z2, z));
    }
}
