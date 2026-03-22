package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgvr implements zzgee {
    private final zzgwh zza;
    private final zzgew zzb;
    private final int zzc;
    private final byte[] zzd;

    private zzgvr(zzgwh zzgwhVar, zzgew zzgewVar, int i, byte[] bArr) {
        this.zza = zzgwhVar;
        this.zzb = zzgewVar;
        this.zzc = i;
        this.zzd = bArr;
    }

    public static zzgee zzb(zzgft zzgftVar) throws GeneralSecurityException {
        zzgvk zzgvkVar = new zzgvk(zzgftVar.zze().zzd(zzgej.zza()), zzgftVar.zzd().zzd());
        String valueOf = String.valueOf(zzgftVar.zzd().zzg());
        return new zzgvr(zzgvkVar, new zzgwm(new zzgwl("HMAC".concat(valueOf), new SecretKeySpec(zzgftVar.zzf().zzd(zzgej.zza()), "HMAC")), zzgftVar.zzd().zze()), zzgftVar.zzd().zze(), zzgftVar.zzb().zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzd;
        int length = bArr.length;
        int i = this.zzc;
        int length2 = bArr3.length;
        if (length >= i + length2) {
            if (zzgou.zzc(bArr3, bArr)) {
                int i2 = length - i;
                byte[] copyOfRange = Arrays.copyOfRange(bArr, length2, i2);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, i2, length);
                if (bArr2 == null) {
                    bArr2 = new byte[0];
                }
                if (MessageDigest.isEqual(((zzgwm) this.zzb).zzc(zzgvp.zzb(bArr2, copyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8))), copyOfRange2)) {
                    return this.zza.zza(copyOfRange);
                }
                throw new GeneralSecurityException("invalid MAC");
            }
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        throw new GeneralSecurityException("Decryption failed (ciphertext too short).");
    }
}
