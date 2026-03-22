package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgop {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgop(Class cls, Class cls2, zzgoq zzgoqVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgop)) {
            return false;
        }
        zzgop zzgopVar = (zzgop) obj;
        if (!zzgopVar.zza.equals(this.zza) || !zzgopVar.zzb.equals(this.zzb)) {
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
        return simpleName + " with serialization type: " + simpleName2;
    }
}
