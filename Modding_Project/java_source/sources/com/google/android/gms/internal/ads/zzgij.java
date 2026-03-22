package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgij extends zzgfl {
    private final zzgih zza;
    private final String zzb;
    private final zzgig zzc;
    private final zzgfl zzd;

    public /* synthetic */ zzgij(zzgih zzgihVar, String str, zzgig zzgigVar, zzgfl zzgflVar, zzgii zzgiiVar) {
        this.zza = zzgihVar;
        this.zzb = str;
        this.zzc = zzgigVar;
        this.zzd = zzgflVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgij)) {
            return false;
        }
        zzgij zzgijVar = (zzgij) obj;
        if (!zzgijVar.zzc.equals(this.zzc) || !zzgijVar.zzd.equals(this.zzd) || !zzgijVar.zzb.equals(this.zzb) || !zzgijVar.zza.equals(this.zza)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgij.class, this.zzb, this.zzc, this.zzd, this.zza);
    }

    public final String toString() {
        zzgih zzgihVar = this.zza;
        zzgfl zzgflVar = this.zzd;
        String valueOf = String.valueOf(this.zzc);
        String valueOf2 = String.valueOf(zzgflVar);
        String valueOf3 = String.valueOf(zzgihVar);
        return "LegacyKmsEnvelopeAead Parameters (kekUri: " + this.zzb + ", dekParsingStrategy: " + valueOf + ", dekParametersForNewKeys: " + valueOf2 + ", variant: " + valueOf3 + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zza != zzgih.zzb) {
            return true;
        }
        return false;
    }

    public final zzgfl zzb() {
        return this.zzd;
    }

    public final zzgih zzc() {
        return this.zza;
    }

    public final String zzd() {
        return this.zzb;
    }
}
