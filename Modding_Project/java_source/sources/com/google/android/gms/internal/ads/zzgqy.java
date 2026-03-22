package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgqy implements zzgew {
    private zzgqy(zzgew zzgewVar, zzguq zzguqVar, byte[] bArr) {
    }

    public static zzgew zza(zzgmo zzgmoVar) throws GeneralSecurityException {
        byte[] zzd;
        zzgoi zzb = zzgmoVar.zzb(zzgej.zza());
        zzgew zzgewVar = (zzgew) zzgma.zzc().zza(zzb.zzg(), zzgew.class).zzc(zzb.zze());
        zzguq zzc = zzb.zzc();
        int ordinal = zzc.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                } else {
                    zzd = zzgnk.zza.zzd();
                }
            }
            zzd = zzgnk.zza(zzgmoVar.zzd().intValue()).zzd();
        } else {
            zzd = zzgnk.zzb(zzgmoVar.zzd().intValue()).zzd();
        }
        return new zzgqy(zzgewVar, zzc, zzd);
    }
}
