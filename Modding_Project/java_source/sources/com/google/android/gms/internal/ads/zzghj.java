package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzghj extends zzgfk {
    private final zzgho zza;
    private final zzgwq zzb;
    private final zzgwp zzc;
    @Nullable
    private final Integer zzd;

    private zzghj(zzgho zzghoVar, zzgwq zzgwqVar, zzgwp zzgwpVar, @Nullable Integer num) {
        this.zza = zzghoVar;
        this.zzb = zzgwqVar;
        this.zzc = zzgwpVar;
        this.zzd = num;
    }

    public static zzghj zzc(zzghn zzghnVar, zzgwq zzgwqVar, @Nullable Integer num) throws GeneralSecurityException {
        zzgwp zzb;
        zzghn zzghnVar2 = zzghn.zzc;
        if (zzghnVar != zzghnVar2 && num == null) {
            String obj = zzghnVar.toString();
            throw new GeneralSecurityException("For given Variant " + obj + " the value of idRequirement must be non-null");
        } else if (zzghnVar == zzghnVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (zzgwqVar.zza() == 32) {
                zzgho zzc = zzgho.zzc(zzghnVar);
                if (zzc.zzb() == zzghnVar2) {
                    zzb = zzgnk.zza;
                } else if (zzc.zzb() == zzghn.zzb) {
                    zzb = zzgnk.zza(num.intValue());
                } else if (zzc.zzb() == zzghn.zza) {
                    zzb = zzgnk.zzb(num.intValue());
                } else {
                    throw new IllegalStateException("Unknown Variant: ".concat(zzc.zzb().toString()));
                }
                return new zzghj(zzc, zzgwqVar, zzb, num);
            }
            int zza = zzgwqVar.zza();
            throw new GeneralSecurityException("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfk, com.google.android.gms.internal.ads.zzgek
    public final /* synthetic */ zzgex zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgfk
    public final zzgwp zzb() {
        return this.zzc;
    }

    public final zzgho zzd() {
        return this.zza;
    }

    public final zzgwq zze() {
        return this.zzb;
    }

    @Nullable
    public final Integer zzf() {
        return this.zzd;
    }
}
