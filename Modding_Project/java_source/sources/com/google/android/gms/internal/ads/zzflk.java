package com.google.android.gms.internal.ads;

import java.util.Timer;
import java.util.TimerTask;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzflk extends TimerTask {
    final /* synthetic */ Timer zza;
    final /* synthetic */ zzflm zzb;
    final /* synthetic */ zzcfs zzc;

    public zzflk(zzflm zzflmVar, zzcfs zzcfsVar, Timer timer) {
        this.zzc = zzcfsVar;
        this.zza = timer;
        this.zzb = zzflmVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.zzb.zzh();
        zzcft.zzaI(this.zzc.zza, true);
        this.zza.cancel();
    }
}
