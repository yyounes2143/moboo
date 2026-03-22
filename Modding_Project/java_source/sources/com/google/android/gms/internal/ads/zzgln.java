package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgln implements zzgee {
    private static final ThreadLocal zza = new zzglm();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgll] */
    public static zzgee zzb(zzgha zzghaVar) throws GeneralSecurityException {
        return zzgkd.zzc(zzghaVar, new Object() { // from class: com.google.android.gms.internal.ads.zzgll
        });
    }

    public static /* synthetic */ Cipher zzc() {
        try {
            Cipher cipher = (Cipher) zza.get();
            if (cipher != null) {
                return cipher;
            }
            throw new GeneralSecurityException("AES GCM SIV cipher is invalid.");
        } catch (IllegalStateException e) {
            throw new GeneralSecurityException("AES GCM SIV cipher is not available or is invalid.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        throw null;
    }
}
