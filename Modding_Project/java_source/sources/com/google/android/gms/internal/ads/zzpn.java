package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzpn {
    public static final zzpn zza = new zzpl().zzd();
    public final boolean zzb;
    public final boolean zzc;
    public final boolean zzd;

    public /* synthetic */ zzpn(zzpl zzplVar, zzpm zzpmVar) {
        boolean z;
        boolean z2;
        boolean z3;
        z = zzplVar.zza;
        this.zzb = z;
        z2 = zzplVar.zzb;
        this.zzc = z2;
        z3 = zzplVar.zzc;
        this.zzd = z3;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzpn.class == obj.getClass()) {
            zzpn zzpnVar = (zzpn) obj;
            if (this.zzb == zzpnVar.zzb && this.zzc == zzpnVar.zzc && this.zzd == zzpnVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        boolean z = this.zzb;
        boolean z2 = this.zzc;
        return ((z ? 1 : 0) << 2) + (z2 ? 1 : 0) + (z2 ? 1 : 0) + (this.zzd ? 1 : 0);
    }
}
