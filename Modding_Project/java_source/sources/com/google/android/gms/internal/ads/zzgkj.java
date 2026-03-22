package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
import javax.crypto.Cipher;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgkj extends ThreadLocal {
    @Nullable
    public static final Cipher zza() {
        boolean zzf;
        try {
            Cipher cipher = (Cipher) zzgvx.zza.zza("ChaCha20-Poly1305");
            zzf = zzgkk.zzf(cipher);
            if (!zzf) {
                return null;
            }
            return cipher;
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    @Override // java.lang.ThreadLocal
    @Nullable
    public final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}
