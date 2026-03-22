package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgov {
    @Nullable
    private zzgpf zza = null;
    @Nullable
    private zzgwq zzb = null;
    @Nullable
    private Integer zzc = null;

    private zzgov() {
    }

    public final zzgov zza(zzgwq zzgwqVar) throws GeneralSecurityException {
        this.zzb = zzgwqVar;
        return this;
    }

    public final zzgov zzb(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgov zzc(zzgpf zzgpfVar) {
        this.zza = zzgpfVar;
        return this;
    }

    public final zzgox zzd() throws GeneralSecurityException {
        zzgwq zzgwqVar;
        zzgwp zza;
        zzgpf zzgpfVar = this.zza;
        if (zzgpfVar != null && (zzgwqVar = this.zzb) != null) {
            if (zzgpfVar.zzc() == zzgwqVar.zza()) {
                if (zzgpfVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                if (this.zza.zzf() == zzgpd.zzd) {
                    zza = zzgnk.zza;
                } else if (this.zza.zzf() != zzgpd.zzc && this.zza.zzf() != zzgpd.zzb) {
                    if (this.zza.zzf() == zzgpd.zza) {
                        zza = zzgnk.zzb(this.zzc.intValue());
                    } else {
                        throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: ".concat(String.valueOf(this.zza.zzf())));
                    }
                } else {
                    zza = zzgnk.zza(this.zzc.intValue());
                }
                return new zzgox(this.zza, this.zzb, zza, this.zzc, null);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }

    public /* synthetic */ zzgov(zzgow zzgowVar) {
    }
}
