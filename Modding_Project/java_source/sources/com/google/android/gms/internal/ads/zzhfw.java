package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhfw implements zzhfv, zzhfp {
    private static final zzhfw zza = new zzhfw(null);
    private final Object zzb;

    private zzhfw(Object obj) {
        this.zzb = obj;
    }

    public static zzhfv zza(Object obj) {
        zzhgd.zza(obj, "instance cannot be null");
        return new zzhfw(obj);
    }

    public static zzhfv zzc(Object obj) {
        if (obj == null) {
            return zza;
        }
        return new zzhfw(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final Object zzb() {
        return this.zzb;
    }
}
