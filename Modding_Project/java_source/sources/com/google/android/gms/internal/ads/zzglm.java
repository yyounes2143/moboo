package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
import javax.crypto.Cipher;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzglm extends ThreadLocal {
    @Nullable
    public static final Cipher zza() {
        try {
            Cipher cipher = (Cipher) zzgvx.zza.zza("AES/GCM-SIV/NoPadding");
            if (!zzgkd.zzb(cipher)) {
                return null;
            }
            return cipher;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    @Nullable
    public final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}
