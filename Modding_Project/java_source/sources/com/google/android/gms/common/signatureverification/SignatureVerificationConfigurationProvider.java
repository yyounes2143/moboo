package com.google.android.gms.common.signatureverification;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
/* compiled from: Proguard */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes4.dex */
public class SignatureVerificationConfigurationProvider {
    private static final SignatureVerificationConfiguration zza;

    static {
        SignatureVerificationConfiguration zzc;
        zzc = zzd.zzc();
        zza = zzc;
    }

    private SignatureVerificationConfigurationProvider() {
    }

    @NonNull
    public static SignatureVerificationConfiguration zza() {
        return zza;
    }
}
