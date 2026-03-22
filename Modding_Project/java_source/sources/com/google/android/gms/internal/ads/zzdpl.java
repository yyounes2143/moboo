package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdpl implements zzcwo {
    @Nullable
    private final zzcfb zza;

    public zzdpl(@Nullable zzcfb zzcfbVar) {
        this.zza = zzcfbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdj(@Nullable Context context) {
        zzcfb zzcfbVar = this.zza;
        if (zzcfbVar != null) {
            zzcfbVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdl(@Nullable Context context) {
        zzcfb zzcfbVar = this.zza;
        if (zzcfbVar != null) {
            zzcfbVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdm(@Nullable Context context) {
        zzcfb zzcfbVar = this.zza;
        if (zzcfbVar != null) {
            zzcfbVar.onResume();
        }
    }
}
