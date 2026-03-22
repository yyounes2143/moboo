package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* compiled from: Proguard */
@RequiresApi(23)
/* loaded from: classes4.dex */
final class zzqt {
    public static void zza(AudioTrack audioTrack, @Nullable zzpk zzpkVar) {
        AudioDeviceInfo audioDeviceInfo;
        if (zzpkVar == null) {
            audioDeviceInfo = null;
        } else {
            audioDeviceInfo = zzpkVar.zza;
        }
        audioTrack.setPreferredDevice(audioDeviceInfo);
    }
}
