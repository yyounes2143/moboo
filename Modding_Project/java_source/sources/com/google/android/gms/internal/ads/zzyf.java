package com.google.android.gms.internal.ads;

import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzyf implements Spatializer$OnSpatializerStateChangedListener {
    final /* synthetic */ zzyo zza;

    public zzyf(zzyg zzygVar, zzyo zzyoVar) {
        this.zza = zzyoVar;
    }

    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        zzyo.zzi(this.zza);
    }

    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        zzyo.zzi(this.zza);
    }
}
