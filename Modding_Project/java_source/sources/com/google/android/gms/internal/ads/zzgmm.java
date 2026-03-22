package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgmm extends zzgex {
    private final String zza;
    private final zzguq zzb;

    public /* synthetic */ zzgmm(String str, zzguq zzguqVar, zzgmn zzgmnVar) {
        this.zza = str;
        this.zzb = zzguqVar;
    }

    public final String toString() {
        String str;
        String str2 = this.zza;
        int ordinal = this.zzb.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        str = "UNKNOWN";
                    } else {
                        str = "CRUNCHY";
                    }
                } else {
                    str = "RAW";
                }
            } else {
                str = "LEGACY";
            }
        } else {
            str = "TINK";
        }
        return String.format("(typeUrl=%s, outputPrefixType=%s)", str2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zzb != zzguq.RAW) {
            return true;
        }
        return false;
    }
}
