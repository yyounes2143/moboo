package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgyl implements zzhab {
    private static final zzgyl zza = new zzgyl();

    private zzgyl() {
    }

    public static zzgyl zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhab
    public final zzhaa zzb(Class cls) {
        if (zzgys.class.isAssignableFrom(cls)) {
            try {
                return (zzhaa) zzgys.zzbh(cls.asSubclass(zzgys.class)).zzbO();
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.zzhab
    public final boolean zzc(Class cls) {
        return zzgys.class.isAssignableFrom(cls);
    }
}
