package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgez {
    public static zzgex zza(byte[] bArr) throws GeneralSecurityException {
        try {
            zzgtq zzf = zzgtq.zzf(bArr, zzgyc.zza());
            zzgnj zzc = zzgnj.zzc();
            zzgoj zza = zzgoj.zza(zzf);
            if (!zzc.zzk(zza)) {
                return new zzgmp(zza);
            }
            return zzc.zzb(zza);
        } catch (IOException e) {
            throw new GeneralSecurityException("Failed to parse proto", e);
        }
    }

    public static byte[] zzb(zzgex zzgexVar) throws GeneralSecurityException {
        return ((zzgoj) zzgnj.zzc().zze(zzgexVar, zzgoj.class)).zzc().zzaV();
    }
}
