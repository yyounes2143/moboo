package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgjf extends zzgfk {
    private final zzgjl zza;
    private final zzgwq zzb;
    private final zzgwp zzc;
    @Nullable
    private final Integer zzd;

    private zzgjf(zzgjl zzgjlVar, zzgwq zzgwqVar, zzgwp zzgwpVar, @Nullable Integer num) {
        this.zza = zzgjlVar;
        this.zzb = zzgwqVar;
        this.zzc = zzgwpVar;
        this.zzd = num;
    }

    public static zzgjf zzc(zzgjk zzgjkVar, zzgwq zzgwqVar, @Nullable Integer num) throws GeneralSecurityException {
        zzgwp zzb;
        zzgjk zzgjkVar2 = zzgjk.zzc;
        if (zzgjkVar != zzgjkVar2 && num == null) {
            String obj = zzgjkVar.toString();
            throw new GeneralSecurityException("For given Variant " + obj + " the value of idRequirement must be non-null");
        } else if (zzgjkVar == zzgjkVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (zzgwqVar.zza() == 32) {
                zzgjl zzc = zzgjl.zzc(zzgjkVar);
                if (zzc.zzb() == zzgjkVar2) {
                    zzb = zzgnk.zza;
                } else if (zzc.zzb() == zzgjk.zzb) {
                    zzb = zzgnk.zza(num.intValue());
                } else if (zzc.zzb() == zzgjk.zza) {
                    zzb = zzgnk.zzb(num.intValue());
                } else {
                    throw new IllegalStateException("Unknown Variant: ".concat(zzc.zzb().toString()));
                }
                return new zzgjf(zzc, zzgwqVar, zzb, num);
            }
            int zza = zzgwqVar.zza();
            throw new GeneralSecurityException("XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + zza);
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

    public final zzgjl zzd() {
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
