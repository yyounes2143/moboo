package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgmo extends zzgek {
    private final zzgoi zza;
    private final zzgwp zzb;

    public zzgmo(zzgoi zzgoiVar, @Nullable zzgey zzgeyVar) throws GeneralSecurityException {
        zzgwp zza;
        zze(zzgoiVar, zzgeyVar);
        this.zza = zzgoiVar;
        if (zzgoiVar.zzc().equals(zzguq.RAW)) {
            zza = zzgwp.zzb(new byte[0]);
        } else if (zzgoiVar.zzc().equals(zzguq.TINK)) {
            zza = zzgnk.zzb(zzgoiVar.zzf().intValue());
        } else if (!zzgoiVar.zzc().equals(zzguq.LEGACY) && !zzgoiVar.zzc().equals(zzguq.CRUNCHY)) {
            throw new GeneralSecurityException("Unknown output prefix type");
        } else {
            zza = zzgnk.zza(zzgoiVar.zzf().intValue());
        }
        this.zzb = zza;
    }

    private static void zze(zzgoi zzgoiVar, @Nullable zzgey zzgeyVar) throws GeneralSecurityException {
        int i = zzgml.zzb[zzgoiVar.zzb().ordinal()];
    }

    @Override // com.google.android.gms.internal.ads.zzgek
    public final zzgex zza() {
        zzgoi zzgoiVar = this.zza;
        return new zzgmm(zzgoiVar.zzg(), zzgoiVar.zzc(), null);
    }

    public final zzgoi zzb(@Nullable zzgey zzgeyVar) throws GeneralSecurityException {
        zzgoi zzgoiVar = this.zza;
        zze(zzgoiVar, zzgeyVar);
        return zzgoiVar;
    }

    public final zzgwp zzc() {
        return this.zzb;
    }

    @Nullable
    public final Integer zzd() {
        return this.zza.zzf();
    }
}
