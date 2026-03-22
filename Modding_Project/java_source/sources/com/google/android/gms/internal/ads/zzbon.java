package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbon {
    @VisibleForTesting
    static final com.google.android.gms.ads.internal.util.zzbd zza = new zzbol();
    @VisibleForTesting
    static final com.google.android.gms.ads.internal.util.zzbd zzb = new zzbom();
    private final zzbnz zzc;

    public zzbon(Context context, VersionInfoParcel versionInfoParcel, String str, @Nullable zzfhq zzfhqVar) {
        this.zzc = new zzbnz(context, versionInfoParcel, str, zza, zzb, zzfhqVar);
    }

    public final zzbod zza(String str, zzbog zzbogVar, zzbof zzbofVar) {
        return new zzbor(this.zzc, str, zzbogVar, zzbofVar);
    }

    public final zzbow zzb() {
        return new zzbow(this.zzc);
    }
}
