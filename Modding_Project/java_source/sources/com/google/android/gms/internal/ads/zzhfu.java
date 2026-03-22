package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhfu implements zzhge, zzhfp {
    private static final Object zza = new Object();
    private volatile zzhge zzb;
    private volatile Object zzc = zza;

    private zzhfu(zzhge zzhgeVar) {
        this.zzb = zzhgeVar;
    }

    public static zzhfp zza(zzhge zzhgeVar) {
        if (zzhgeVar instanceof zzhfp) {
            return (zzhfp) zzhgeVar;
        }
        return new zzhfu(zzhgeVar);
    }

    public static zzhge zzc(zzhge zzhgeVar) {
        if (zzhgeVar instanceof zzhfu) {
            return zzhgeVar;
        }
        return new zzhfu(zzhgeVar);
    }

    private final synchronized Object zzd() {
        try {
            Object obj = this.zzc;
            Object obj2 = zza;
            if (obj == obj2) {
                Object zzb = this.zzb.zzb();
                Object obj3 = this.zzc;
                if (obj3 != obj2 && obj3 != zzb) {
                    throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + zzb + ". This is likely due to a circular dependency.");
                }
                this.zzc = zzb;
                this.zzb = null;
                return zzb;
            }
            return obj;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final Object zzb() {
        Object obj = this.zzc;
        if (obj == zza) {
            return zzd();
        }
        return obj;
    }
}
