package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgie extends zzgfk {
    private final zzgij zza;
    private final zzgwp zzb;
    @Nullable
    private final Integer zzc;

    private zzgie(zzgij zzgijVar, zzgwp zzgwpVar, @Nullable Integer num) {
        this.zza = zzgijVar;
        this.zzb = zzgwpVar;
        this.zzc = num;
    }

    public static zzgie zzc(zzgij zzgijVar, @Nullable Integer num) throws GeneralSecurityException {
        zzgwp zzb;
        if (zzgijVar.zzc() == zzgih.zzb) {
            if (num == null) {
                zzb = zzgnk.zza;
            } else {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
        } else if (zzgijVar.zzc() == zzgih.zza) {
            if (num != null) {
                zzb = zzgnk.zzb(num.intValue());
            } else {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
        } else {
            throw new GeneralSecurityException("Unknown Variant: ".concat(String.valueOf(zzgijVar.zzc())));
        }
        return new zzgie(zzgijVar, zzb, num);
    }

    @Override // com.google.android.gms.internal.ads.zzgfk, com.google.android.gms.internal.ads.zzgek
    public final /* synthetic */ zzgex zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgfk
    public final zzgwp zzb() {
        return this.zzb;
    }

    public final zzgij zzd() {
        return this.zza;
    }

    public final Integer zze() {
        return this.zzc;
    }
}
