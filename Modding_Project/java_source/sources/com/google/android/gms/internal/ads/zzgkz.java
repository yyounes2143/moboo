package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgkz implements zzgee {
    private final byte[] zza;
    private final int zzb;
    private final zzgqz zzc;

    private zzgkz(byte[] bArr, zzgwp zzgwpVar, int i) throws GeneralSecurityException {
        this.zzc = new zzgwj(bArr);
        this.zza = zzgwpVar.zzd();
        this.zzb = i;
    }

    public static zzgee zzb(zzgiz zzgizVar) throws GeneralSecurityException {
        return new zzgkz(zzgizVar.zze().zzd(zzgej.zza()), zzgizVar.zzb(), zzgizVar.zzd().zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr != null) {
            byte[] bArr3 = this.zza;
            int i = this.zzb;
            int length = bArr.length;
            int length2 = bArr3.length;
            int i2 = i + length2;
            if (length >= i2 + 28) {
                if (zzgou.zzc(bArr3, bArr)) {
                    byte[] copyOfRange = Arrays.copyOfRange(bArr, length2, i2);
                    byte[] bArr4 = {0, 1, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
                    byte[] bArr5 = {0, 2, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
                    int length3 = copyOfRange.length;
                    if (length3 <= 12 && length3 >= 8) {
                        System.arraycopy(copyOfRange, 0, bArr4, 4, length3);
                        System.arraycopy(copyOfRange, 0, bArr5, 4, length3);
                        zzgqz zzgqzVar = this.zzc;
                        byte[] bArr6 = new byte[32];
                        System.arraycopy(zzgqzVar.zza(bArr4, 16), 0, bArr6, 0, 16);
                        System.arraycopy(zzgqzVar.zza(bArr5, 16), 0, bArr6, 16, 16);
                        if (zzglr.zza(2)) {
                            SecretKey zzc = zzgjx.zzc(bArr6);
                            int i3 = i2 + 12;
                            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, i2, i3);
                            if (copyOfRange2.length == 12) {
                                if (length >= i2 + 28) {
                                    AlgorithmParameterSpec zza = zzgjx.zza(copyOfRange2, 0, 12);
                                    Cipher zzb = zzgjx.zzb();
                                    zzb.init(2, zzc, zza);
                                    if (bArr2 != null && bArr2.length != 0) {
                                        zzb.updateAAD(bArr2);
                                    }
                                    return zzb.doFinal(bArr, i3, length - i3);
                                }
                                throw new GeneralSecurityException("ciphertext too short");
                            }
                            throw new GeneralSecurityException("iv is wrong size");
                        }
                        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
                    }
                    throw new GeneralSecurityException("invalid salt size");
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new NullPointerException("ciphertext is null");
    }
}
