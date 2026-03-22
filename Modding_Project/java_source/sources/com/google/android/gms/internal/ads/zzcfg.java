package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcfg implements View.OnAttachStateChangeListener {
    final /* synthetic */ zzbxv zza;
    final /* synthetic */ zzcfj zzb;

    public zzcfg(zzcfj zzcfjVar, zzbxv zzbxvVar) {
        this.zza = zzbxvVar;
        this.zzb = zzcfjVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzb.zzac(view, this.zza, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
