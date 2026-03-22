package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzggy {
    @Nullable
    private zzghi zza = null;
    @Nullable
    private zzgwq zzb = null;
    @Nullable
    private Integer zzc = null;

    private zzggy() {
    }

    public final zzggy zza(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzggy zzb(zzgwq zzgwqVar) {
        this.zzb = zzgwqVar;
        return this;
    }

    public final zzggy zzc(zzghi zzghiVar) {
        this.zza = zzghiVar;
        return this;
    }

    public final zzgha zzd() throws GeneralSecurityException {
        zzgwq zzgwqVar;
        zzgwp zzb;
        zzghi zzghiVar = this.zza;
        if (zzghiVar != null && (zzgwqVar = this.zzb) != null) {
            if (zzghiVar.zzb() == zzgwqVar.zza()) {
                if (zzghiVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                if (this.zza.zzd() == zzghg.zzc) {
                    zzb = zzgnk.zza;
                } else if (this.zza.zzd() == zzghg.zzb) {
                    zzb = zzgnk.zza(this.zzc.intValue());
                } else if (this.zza.zzd() == zzghg.zza) {
                    zzb = zzgnk.zzb(this.zzc.intValue());
                } else {
                    throw new IllegalStateException("Unknown AesGcmSivParameters.Variant: ".concat(String.valueOf(this.zza.zzd())));
                }
                return new zzgha(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }

    public /* synthetic */ zzggy(zzggz zzggzVar) {
    }
}
