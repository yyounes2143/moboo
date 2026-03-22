package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgjx {
    private static final ThreadLocal zza = new zzgjw();

    public static AlgorithmParameterSpec zza(byte[] bArr, int i, int i2) {
        int i3 = zzgou.zza;
        Objects.equals(System.getProperty("java.vendor"), "The Android Project");
        return new GCMParameterSpec(128, bArr, i, 12);
    }

    public static Cipher zzb() {
        return (Cipher) zza.get();
    }

    public static SecretKey zzc(byte[] bArr) throws GeneralSecurityException {
        zzgwn.zza(bArr.length);
        return new SecretKeySpec(bArr, "AES");
    }
}
