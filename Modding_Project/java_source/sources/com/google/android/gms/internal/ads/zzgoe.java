package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgoe {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgoe(Class cls, Class cls2, zzgof zzgofVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgoe)) {
            return false;
        }
        zzgoe zzgoeVar = (zzgoe) obj;
        if (!zzgoeVar.zza.equals(this.zza) || !zzgoeVar.zzb.equals(this.zzb)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        Class cls = this.zzb;
        String simpleName = this.zza.getSimpleName();
        String simpleName2 = cls.getSimpleName();
        return simpleName + " with primitive type: " + simpleName2;
    }
}
