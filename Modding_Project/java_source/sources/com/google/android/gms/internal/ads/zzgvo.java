package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgvo implements zzgee {
    private final SecretKey zza;
    private final byte[] zzb;

    private zzgvo(byte[] bArr, zzgwp zzgwpVar) throws GeneralSecurityException {
        if (zzglr.zza(2)) {
            this.zza = zzgjx.zzc(bArr);
            this.zzb = zzgwpVar.zzd();
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }

    public static zzgee zzb(zzggp zzggpVar) throws GeneralSecurityException {
        return new zzgvo(zzggpVar.zze().zzd(zzgej.zza()), zzggpVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr != null) {
            byte[] bArr3 = this.zzb;
            int length = bArr.length;
            int length2 = bArr3.length;
            if (length >= length2 + 28) {
                if (zzgou.zzc(bArr3, bArr)) {
                    AlgorithmParameterSpec zza = zzgjx.zza(bArr, length2, 12);
                    SecretKey secretKey = this.zza;
                    Cipher zzb = zzgjx.zzb();
                    zzb.init(2, secretKey, zza);
                    if (bArr2 != null && bArr2.length != 0) {
                        zzb.updateAAD(bArr2);
                    }
                    return zzb.doFinal(bArr, length2 + 12, (length - length2) - 12);
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new NullPointerException("ciphertext is null");
    }
}
