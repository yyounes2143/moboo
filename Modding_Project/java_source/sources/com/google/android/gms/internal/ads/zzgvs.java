package com.google.android.gms.internal.ads;

import com.google.android.gms.security.ProviderInstaller;
import java.security.GeneralSecurityException;
import java.security.Provider;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgvs implements zzgvv {
    private final zzgwf zza;

    @Override // com.google.android.gms.internal.ads.zzgvv
    public final Object zza(String str) throws GeneralSecurityException {
        for (Provider provider : zzgvx.zzb(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL")) {
            try {
                return this.zza.zza(str, provider);
            } catch (Exception unused) {
            }
        }
        return this.zza.zza(str, null);
    }
}
