package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzggd {
    @Nullable
    private zzggm zza = null;
    @Nullable
    private zzgwq zzb = null;
    @Nullable
    private Integer zzc = null;

    private zzggd() {
    }

    public final zzggd zza(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzggd zzb(zzgwq zzgwqVar) {
        this.zzb = zzgwqVar;
        return this;
    }

    public final zzggd zzc(zzggm zzggmVar) {
        this.zza = zzggmVar;
        return this;
    }

    public final zzggf zzd() throws GeneralSecurityException {
        zzgwq zzgwqVar;
        zzgwp zzb;
        zzggm zzggmVar = this.zza;
        if (zzggmVar != null && (zzgwqVar = this.zzb) != null) {
            if (zzggmVar.zzc() == zzgwqVar.zza()) {
                if (zzggmVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                if (this.zza.zze() == zzggk.zzc) {
                    zzb = zzgnk.zza;
                } else if (this.zza.zze() == zzggk.zzb) {
                    zzb = zzgnk.zza(this.zzc.intValue());
                } else if (this.zza.zze() == zzggk.zza) {
                    zzb = zzgnk.zzb(this.zzc.intValue());
                } else {
                    throw new IllegalStateException("Unknown AesEaxParameters.Variant: ".concat(String.valueOf(this.zza.zze())));
                }
                return new zzggf(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }

    public /* synthetic */ zzggd(zzgge zzggeVar) {
    }
}
