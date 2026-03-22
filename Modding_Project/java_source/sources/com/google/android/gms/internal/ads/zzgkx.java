package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgkx implements zzgee {
    private final zzgee zza;
    private final byte[] zzb;

    private zzgkx(zzgee zzgeeVar, byte[] bArr) {
        this.zza = zzgeeVar;
        int length = bArr.length;
        if (length != 0 && length != 5) {
            throw new IllegalArgumentException("identifier has an invalid length");
        }
        this.zzb = bArr;
    }

    public static zzgee zzb(zzgmo zzgmoVar) throws GeneralSecurityException {
        byte[] zzd;
        zzgoi zzb = zzgmoVar.zzb(zzgej.zza());
        zzgee zzgeeVar = (zzgee) zzgma.zzc().zza(zzb.zzg(), zzgee.class).zzc(zzb.zze());
        zzguq zzc = zzb.zzc();
        int ordinal = zzc.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type ".concat(String.valueOf(zzc)));
                    }
                } else {
                    zzd = zzgnk.zza.zzd();
                }
            }
            zzd = zzgnk.zza(zzgmoVar.zzd().intValue()).zzd();
        } else {
            zzd = zzgnk.zzb(zzgmoVar.zzd().intValue()).zzd();
        }
        return new zzgkx(zzgeeVar, zzd);
    }

    public static zzgee zzc(zzgee zzgeeVar, zzgwp zzgwpVar) {
        return new zzgkx(zzgeeVar, zzgwpVar.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzb;
        if (bArr3.length == 0) {
            return this.zza.zza(bArr, bArr2);
        }
        if (zzgou.zzc(bArr3, bArr)) {
            return this.zza.zza(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("wrong prefix");
    }
}
