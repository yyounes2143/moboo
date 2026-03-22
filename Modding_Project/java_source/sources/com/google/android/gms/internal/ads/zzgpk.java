package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgpk {
    @Nullable
    private zzgpw zza = null;
    @Nullable
    private zzgwq zzb = null;
    @Nullable
    private Integer zzc = null;

    private zzgpk() {
    }

    public final zzgpk zza(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgpk zzb(zzgwq zzgwqVar) {
        this.zzb = zzgwqVar;
        return this;
    }

    public final zzgpk zzc(zzgpw zzgpwVar) {
        this.zza = zzgpwVar;
        return this;
    }

    public final zzgpm zzd() throws GeneralSecurityException {
        zzgwq zzgwqVar;
        zzgwp zza;
        zzgpw zzgpwVar = this.zza;
        if (zzgpwVar != null && (zzgwqVar = this.zzb) != null) {
            if (zzgpwVar.zzc() == zzgwqVar.zza()) {
                if (zzgpwVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                if (this.zza.zzg() == zzgpu.zzd) {
                    zza = zzgnk.zza;
                } else if (this.zza.zzg() != zzgpu.zzc && this.zza.zzg() != zzgpu.zzb) {
                    if (this.zza.zzg() == zzgpu.zza) {
                        zza = zzgnk.zzb(this.zzc.intValue());
                    } else {
                        throw new IllegalStateException("Unknown HmacParameters.Variant: ".concat(String.valueOf(this.zza.zzg())));
                    }
                } else {
                    zza = zzgnk.zza(this.zzc.intValue());
                }
                return new zzgpm(this.zza, this.zzb, zza, this.zzc, null);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }

    public /* synthetic */ zzgpk(zzgpl zzgplVar) {
    }
}
