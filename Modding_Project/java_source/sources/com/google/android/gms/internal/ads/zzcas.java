package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcas implements Runnable {
    final /* synthetic */ MediaPlayer zza;
    final /* synthetic */ zzcba zzb;

    public zzcas(zzcba zzcbaVar, MediaPlayer mediaPlayer) {
        this.zza = mediaPlayer;
        this.zzb = zzcbaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcbb zzcbbVar;
        zzcbb zzcbbVar2;
        zzcba zzcbaVar = this.zzb;
        zzcba.zzm(zzcbaVar, this.zza);
        zzcbbVar = zzcbaVar.zzr;
        if (zzcbbVar != null) {
            zzcbbVar2 = zzcbaVar.zzr;
            zzcbbVar2.zzf();
        }
    }
}
