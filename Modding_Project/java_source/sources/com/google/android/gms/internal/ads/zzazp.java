package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzazp implements Runnable {
    final /* synthetic */ View zza;
    final /* synthetic */ zzazt zzb;

    public zzazp(zzazt zzaztVar, View view) {
        this.zza = view;
        this.zzb = zzaztVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzb(this.zza);
    }
}
