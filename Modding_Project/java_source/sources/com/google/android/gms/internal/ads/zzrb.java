package com.google.android.gms.internal.ads;

import android.media.AudioRouting;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.exoplayer.audio.Kkkkkkkkkkkkkkkkkkkkkkk;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@RequiresApi(24)
/* loaded from: classes4.dex */
public final class zzrb {
    private final AudioTrack zza;
    private final zzpj zzb;
    @Nullable
    private AudioRouting.OnRoutingChangedListener zzc = new AudioRouting.OnRoutingChangedListener() { // from class: com.google.android.gms.internal.ads.zzra
        public final void onRoutingChanged(AudioRouting audioRouting) {
            zzrb.zza(zzrb.this, audioRouting);
        }
    };

    public zzrb(AudioTrack audioTrack, zzpj zzpjVar) {
        this.zza = audioTrack;
        this.zzb = zzpjVar;
        audioTrack.addOnRoutingChangedListener(this.zzc, new Handler(Looper.myLooper()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0005, code lost:
        r2 = r2.getRoutedDevice();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void zza(com.google.android.gms.internal.ads.zzrb r1, android.media.AudioRouting r2) {
        /*
            android.media.AudioRouting$OnRoutingChangedListener r0 = r1.zzc
            if (r0 != 0) goto L5
            goto L10
        L5:
            android.media.AudioDeviceInfo r2 = androidx.media3.exoplayer.audio.Kkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            if (r2 == 0) goto L10
            com.google.android.gms.internal.ads.zzpj r1 = r1.zzb
            r1.zzh(r2)
        L10:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrb.zza(com.google.android.gms.internal.ads.zzrb, android.media.AudioRouting):void");
    }

    public final void zzb() {
        AudioRouting.OnRoutingChangedListener onRoutingChangedListener = this.zzc;
        onRoutingChangedListener.getClass();
        this.zza.removeOnRoutingChangedListener(Kkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(onRoutingChangedListener));
        this.zzc = null;
    }
}
