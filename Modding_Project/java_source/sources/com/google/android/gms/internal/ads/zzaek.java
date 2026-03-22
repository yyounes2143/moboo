package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaek {
    public final zzaen zza;
    public final zzaen zzb;

    public zzaek(zzaen zzaenVar, zzaen zzaenVar2) {
        this.zza = zzaenVar;
        this.zzb = zzaenVar2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaek.class == obj.getClass()) {
            zzaek zzaekVar = (zzaek) obj;
            if (this.zza.equals(zzaekVar.zza) && this.zzb.equals(zzaekVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza.hashCode() * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        String concat;
        zzaen zzaenVar = this.zza;
        zzaen zzaenVar2 = this.zzb;
        String obj = zzaenVar.toString();
        if (zzaenVar.equals(zzaenVar2)) {
            concat = "";
        } else {
            concat = ", ".concat(zzaenVar2.toString());
        }
        return "[" + obj + concat + "]";
    }
}
