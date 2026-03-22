package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzenx implements zzetv {
    private final zzgdj zza;
    private final Context zzb;

    public zzenx(zzgdj zzgdjVar, Context context) {
        this.zza = zzgdjVar;
        this.zzb = context;
    }

    public static /* synthetic */ zzeny zzc(zzenx zzenxVar) {
        int i;
        int i2;
        AudioManager audioManager = (AudioManager) zzenxVar.zzb.getSystemService("audio");
        float zza = com.google.android.gms.ads.internal.zzv.zzt().zza();
        boolean zze = com.google.android.gms.ads.internal.zzv.zzt().zze();
        if (audioManager == null) {
            return new zzeny(-1, false, false, -1, -1, -1, -1, -1, zza, zze, true);
        }
        int mode = audioManager.getMode();
        boolean isMusicActive = audioManager.isMusicActive();
        boolean isSpeakerphoneOn = audioManager.isSpeakerphoneOn();
        int streamVolume = audioManager.getStreamVolume(3);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlm)).booleanValue()) {
            int zzj = com.google.android.gms.ads.internal.zzv.zzs().zzj(audioManager);
            i2 = audioManager.getStreamMaxVolume(3);
            i = zzj;
        } else {
            i = -1;
            i2 = -1;
        }
        return new zzeny(mode, isMusicActive, isSpeakerphoneOn, streamVolume, i, i2, audioManager.getRingerMode(), audioManager.getStreamVolume(2), zza, zze, false);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 13;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzenw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzenx.zzc(zzenx.this);
            }
        });
    }
}
