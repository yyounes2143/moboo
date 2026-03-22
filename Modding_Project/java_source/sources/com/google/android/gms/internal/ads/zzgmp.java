package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgmp extends zzgex {
    private final zzgoj zza;

    public zzgmp(zzgoj zzgojVar) {
        this.zza = zzgojVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgmp)) {
            return false;
        }
        zzgoj zzgojVar = ((zzgmp) obj).zza;
        zzgoj zzgojVar2 = this.zza;
        if (!zzgojVar2.zzc().zzg().equals(zzgojVar.zzc().zzg()) || !zzgojVar2.zzc().zzi().equals(zzgojVar.zzc().zzi()) || !zzgojVar2.zzc().zzh().equals(zzgojVar.zzc().zzh())) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        zzgoj zzgojVar = this.zza;
        return Objects.hash(zzgojVar.zzc(), zzgojVar.zzd());
    }

    public final String toString() {
        String str;
        zzgoj zzgojVar = this.zza;
        String zzi = zzgojVar.zzc().zzi();
        int ordinal = zzgojVar.zzc().zzg().ordinal();
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
        return String.format("(typeUrl=%s, outputPrefixType=%s)", zzi, str);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zza.zzc().zzg() != zzguq.RAW) {
            return true;
        }
        return false;
    }

    public final zzgoj zzb() {
        return this.zza;
    }
}
