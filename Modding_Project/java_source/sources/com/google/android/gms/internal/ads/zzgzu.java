package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgzu implements zzhab {
    private final zzhab[] zza;

    public zzgzu(zzhab... zzhabVarArr) {
        this.zza = zzhabVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzhab
    public final zzhaa zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzhab zzhabVar = this.zza[i];
            if (zzhabVar.zzc(cls)) {
                return zzhabVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.zzhab
    public final boolean zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zza[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
