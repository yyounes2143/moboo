package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhgi implements zzhge {
    private static final Object zza = new Object();
    private volatile zzhge zzb;
    private volatile Object zzc = zza;

    private zzhgi(zzhge zzhgeVar) {
        this.zzb = zzhgeVar;
    }

    public static zzhge zza(zzhge zzhgeVar) {
        if (!(zzhgeVar instanceof zzhgi)) {
            if (zzhgeVar instanceof zzhfu) {
                return zzhgeVar;
            }
            return new zzhgi(zzhgeVar);
        }
        return zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final Object zzb() {
        Object obj = this.zzc;
        if (obj == zza) {
            zzhge zzhgeVar = this.zzb;
            if (zzhgeVar == null) {
                return this.zzc;
            }
            Object zzb = zzhgeVar.zzb();
            this.zzc = zzb;
            this.zzb = null;
            return zzb;
        }
        return obj;
    }
}
