package com.google.android.gms.internal.measurement;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import j$.util.Objects;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzx extends zzai {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzx(zzy zzyVar, String str) {
        super(MobileAdsBridge.versionMethodName);
        Objects.requireNonNull(zzyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        return new zzah(Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE));
    }
}
