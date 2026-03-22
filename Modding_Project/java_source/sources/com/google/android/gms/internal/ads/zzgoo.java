package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgoo {
    private final Class zza;
    private final zzgwp zzb;

    public /* synthetic */ zzgoo(Class cls, zzgwp zzgwpVar, zzgoq zzgoqVar) {
        this.zza = cls;
        this.zzb = zzgwpVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgoo)) {
            return false;
        }
        zzgoo zzgooVar = (zzgoo) obj;
        if (!zzgooVar.zza.equals(this.zza) || !zzgooVar.zzb.equals(this.zzb)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        zzgwp zzgwpVar = this.zzb;
        String simpleName = this.zza.getSimpleName();
        String valueOf = String.valueOf(zzgwpVar);
        return simpleName + ", object identifier: " + valueOf;
    }
}
