package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzggn {
    @Nullable
    private zzggx zza = null;
    @Nullable
    private zzgwq zzb = null;
    @Nullable
    private Integer zzc = null;

    private zzggn() {
    }

    public final zzggn zza(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzggn zzb(zzgwq zzgwqVar) {
        this.zzb = zzgwqVar;
        return this;
    }

    public final zzggn zzc(zzggx zzggxVar) {
        this.zza = zzggxVar;
        return this;
    }

    public final zzggp zzd() throws GeneralSecurityException {
        zzgwq zzgwqVar;
        zzgwp zzb;
        zzggx zzggxVar = this.zza;
        if (zzggxVar != null && (zzgwqVar = this.zzb) != null) {
            if (zzggxVar.zzb() == zzgwqVar.zza()) {
                if (zzggxVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                if (this.zza.zzd() == zzggv.zzc) {
                    zzb = zzgnk.zza;
                } else if (this.zza.zzd() == zzggv.zzb) {
                    zzb = zzgnk.zza(this.zzc.intValue());
                } else if (this.zza.zzd() == zzggv.zza) {
                    zzb = zzgnk.zzb(this.zzc.intValue());
                } else {
                    throw new IllegalStateException("Unknown AesGcmParameters.Variant: ".concat(String.valueOf(this.zza.zzd())));
                }
                return new zzggp(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }

    public /* synthetic */ zzggn(zzggo zzggoVar) {
    }
}
