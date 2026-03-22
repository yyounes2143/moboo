package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgkd implements zzgee {
    private static final byte[] zza = zzgwg.zza("7a806c");
    private static final byte[] zzb = zzgwg.zza("46bb91c3c5");
    private static final byte[] zzc = zzgwg.zza("36864200e0eaf5284d884a0e77d31646");
    private static final byte[] zzd = zzgwg.zza("bae8e37fc83441b16034566b");
    private static final byte[] zze = zzgwg.zza("af60eb711bd85bc1e4d3e0a462e074eea428a8");
    private final SecretKey zzf;
    private final byte[] zzg;

    private zzgkd(byte[] bArr, byte[] bArr2, zzgll zzgllVar) throws GeneralSecurityException {
        this.zzg = bArr2;
        zzgwn.zza(bArr.length);
        this.zzf = new SecretKeySpec(bArr, "AES");
    }

    public static boolean zzb(Cipher cipher) {
        try {
            byte[] bArr = zzd;
            cipher.init(2, new SecretKeySpec(zzc, "AES"), new GCMParameterSpec(128, bArr, 0, bArr.length));
            cipher.updateAAD(zzb);
            byte[] bArr2 = zze;
            return MessageDigest.isEqual(cipher.doFinal(bArr2, 0, bArr2.length), zza);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    public static zzgee zzc(zzgha zzghaVar, zzgll zzgllVar) throws GeneralSecurityException {
        if (zzb(zzgln.zzc())) {
            return new zzgkd(zzghaVar.zze().zzd(zzgej.zza()), zzghaVar.zzb().zzd(), zzgllVar);
        }
        throw new IllegalStateException("Cipher does not implement AES GCM SIV.");
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        byte[] bArr3 = this.zzg;
        int length2 = bArr3.length;
        if (length >= length2 + 28) {
            if (zzgou.zzc(bArr3, bArr)) {
                Cipher zzc2 = zzgln.zzc();
                zzc2.init(2, this.zzf, new GCMParameterSpec(128, bArr, length2, 12));
                if (bArr2 != null && bArr2.length != 0) {
                    zzc2.updateAAD(bArr2);
                }
                return zzc2.doFinal(bArr, length2 + 12, (length - length2) - 12);
            }
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
