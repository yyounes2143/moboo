package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzrf extends AudioTrack$StreamEventCallback {
    final /* synthetic */ zzrg zza;

    public zzrf(zzrg zzrgVar) {
        this.zza = zzrgVar;
    }

    public final void onDataRequest(AudioTrack audioTrack, int i) {
        AudioTrack audioTrack2;
        audioTrack2 = this.zza.zza.zzs;
        audioTrack.equals(audioTrack2);
    }

    public final void onPresentationEnded(AudioTrack audioTrack) {
        AudioTrack audioTrack2;
        zzri zzriVar = this.zza.zza;
        audioTrack2 = zzriVar.zzs;
        if (audioTrack.equals(audioTrack2)) {
            zzriVar.zzP = true;
        }
    }

    public final void onTearDown(AudioTrack audioTrack) {
        AudioTrack audioTrack2;
        audioTrack2 = this.zza.zza.zzs;
        audioTrack.equals(audioTrack2);
    }
}
