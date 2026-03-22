package com.google.android.gms.internal.consent_sdk;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdn implements zzdr {
    private static final Object zza = new Object();
    private volatile zzdr zzb;
    private volatile Object zzc = zza;

    private zzdn(zzdr zzdrVar) {
        this.zzb = zzdrVar;
    }

    public static zzdr zzb(zzdr zzdrVar) {
        if (zzdrVar instanceof zzdn) {
            return zzdrVar;
        }
        return new zzdn(zzdrVar);
    }

    private final synchronized Object zzc() {
        try {
            Object obj = this.zzc;
            Object obj2 = zza;
            if (obj == obj2) {
                Object zza2 = this.zzb.zza();
                Object obj3 = this.zzc;
                if (obj3 != obj2 && obj3 != zza2) {
                    throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + zza2 + ". This is likely due to a circular dependency.");
                }
                this.zzc = zza2;
                this.zzb = null;
                return zza2;
            }
            return obj;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdt, com.google.android.gms.internal.consent_sdk.zzds
    public final Object zza() {
        Object obj = this.zzc;
        if (obj == zza) {
            return zzc();
        }
        return obj;
    }
}
