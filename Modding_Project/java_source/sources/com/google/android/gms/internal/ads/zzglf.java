package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzglf implements zzgee {
    private final byte[] zza;
    private final byte[] zzb;

    private zzglf(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (zzglr.zza(1)) {
            if (zzc()) {
                if (bArr.length == 32) {
                    this.zza = bArr;
                    this.zzb = bArr2;
                    return;
                }
                throw new InvalidKeyException("The key length in bytes must be 32.");
            }
            throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
        }
        throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
    }

    public static zzgee zzb(zzgjf zzgjfVar) throws GeneralSecurityException {
        return new zzglf(zzgjfVar.zze().zzd(zzgej.zza()), zzgjfVar.zzb().zzd());
    }

    public static boolean zzc() {
        if (zzgkk.zzc() != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr != null) {
            byte[] bArr3 = this.zzb;
            int length = bArr.length;
            int length2 = bArr3.length;
            if (length >= length2 + 40) {
                if (zzgou.zzc(bArr3, bArr)) {
                    byte[] bArr4 = new byte[24];
                    System.arraycopy(bArr, length2, bArr4, 0, 24);
                    int[] zzd = zzgkq.zzd(zzgkq.zze(this.zza), zzgkq.zze(bArr4));
                    ByteBuffer order = ByteBuffer.allocate(zzd.length * 4).order(ByteOrder.LITTLE_ENDIAN);
                    order.asIntBuffer().put(zzd);
                    SecretKeySpec secretKeySpec = new SecretKeySpec(order.array(), "ChaCha20");
                    byte[] bArr5 = new byte[12];
                    System.arraycopy(bArr4, 16, bArr5, 4, 8);
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr5);
                    Cipher zzc = zzgkk.zzc();
                    zzc.init(2, secretKeySpec, ivParameterSpec);
                    if (bArr2 != null && bArr2.length != 0) {
                        zzc.updateAAD(bArr2);
                    }
                    return zzc.doFinal(bArr, length2 + 24, (length - length2) - 24);
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new NullPointerException("ciphertext is null");
    }
}
