package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfvx implements zzfvu {
    private static final zzfvu zza = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfvw
        @Override // com.google.android.gms.internal.ads.zzfvu
        public final Object zza() {
            throw new IllegalStateException();
        }
    };
    private final zzfwb zzb = new zzfwb();
    private volatile zzfvu zzc;
    private Object zzd;

    public zzfvx(zzfvu zzfvuVar) {
        this.zzc = zzfvuVar;
    }

    public final String toString() {
        Object obj = this.zzc;
        if (obj == zza) {
            obj = "<supplier that returned " + String.valueOf(this.zzd) + ">";
        }
        return "Suppliers.memoize(" + String.valueOf(obj) + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzfvu
    public final Object zza() {
        zzfvu zzfvuVar = this.zzc;
        zzfvu zzfvuVar2 = zza;
        if (zzfvuVar != zzfvuVar2) {
            synchronized (this.zzb) {
                try {
                    if (this.zzc != zzfvuVar2) {
                        Object zza2 = this.zzc.zza();
                        this.zzd = zza2;
                        this.zzc = zzfvuVar2;
                        return zza2;
                    }
                } finally {
                }
            }
        }
        return this.zzd;
    }
}
