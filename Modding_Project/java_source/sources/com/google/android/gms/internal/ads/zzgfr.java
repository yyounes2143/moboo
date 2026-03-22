package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgfr {
    @Nullable
    private zzggc zza = null;
    @Nullable
    private zzgwq zzb = null;
    @Nullable
    private zzgwq zzc = null;
    @Nullable
    private Integer zzd = null;

    private zzgfr() {
    }

    public final zzgfr zza(zzgwq zzgwqVar) {
        this.zzb = zzgwqVar;
        return this;
    }

    public final zzgfr zzb(zzgwq zzgwqVar) {
        this.zzc = zzgwqVar;
        return this;
    }

    public final zzgfr zzc(@Nullable Integer num) {
        this.zzd = num;
        return this;
    }

    public final zzgfr zzd(zzggc zzggcVar) {
        this.zza = zzggcVar;
        return this;
    }

    public final zzgft zze() throws GeneralSecurityException {
        zzgwp zzb;
        zzggc zzggcVar = this.zza;
        if (zzggcVar != null) {
            zzgwq zzgwqVar = this.zzb;
            if (zzgwqVar != null && this.zzc != null) {
                if (zzggcVar.zzb() == zzgwqVar.zza()) {
                    if (zzggcVar.zzc() == this.zzc.zza()) {
                        if (this.zza.zza() && this.zzd == null) {
                            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                        }
                        if (!this.zza.zza() && this.zzd != null) {
                            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                        }
                        if (this.zza.zzh() == zzgga.zzc) {
                            zzb = zzgnk.zza;
                        } else if (this.zza.zzh() == zzgga.zzb) {
                            zzb = zzgnk.zza(this.zzd.intValue());
                        } else if (this.zza.zzh() == zzgga.zza) {
                            zzb = zzgnk.zzb(this.zzd.intValue());
                        } else {
                            throw new IllegalStateException("Unknown AesCtrHmacAeadParameters.Variant: ".concat(String.valueOf(this.zza.zzh())));
                        }
                        return new zzgft(this.zza, this.zzb, this.zzc, zzb, this.zzd, null);
                    }
                    throw new GeneralSecurityException("HMAC key size mismatch");
                }
                throw new GeneralSecurityException("AES key size mismatch");
            }
            throw new GeneralSecurityException("Cannot build without key material");
        }
        throw new GeneralSecurityException("Cannot build without parameters");
    }

    public /* synthetic */ zzgfr(zzgfs zzgfsVar) {
    }
}
