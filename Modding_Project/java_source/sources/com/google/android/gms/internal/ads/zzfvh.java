package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfvh extends zzfva {
    private final Object zza;

    public zzfvh(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfvh) {
            return this.zza.equals(((zzfvh) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String obj = this.zza.toString();
        return "Optional.of(" + obj + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzfva
    public final zzfva zza(zzfur zzfurVar) {
        Object apply = zzfurVar.apply(this.zza);
        zzfvc.zzc(apply, "the Function passed to Optional.transform() must not return null.");
        return new zzfvh(apply);
    }

    @Override // com.google.android.gms.internal.ads.zzfva
    public final Object zzb(Object obj) {
        return this.zza;
    }
}
