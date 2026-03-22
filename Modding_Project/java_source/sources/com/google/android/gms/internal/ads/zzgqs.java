package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgqs implements zzgpg {
    public zzgqs(zzgpm zzgpmVar) throws GeneralSecurityException {
        if (zzglr.zza(2)) {
            return;
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
