package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfmw {
    private static int zza = 2;

    public static void zza(@NonNull Context context) {
        context.registerReceiver(new zzfmv(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }

    public static int zzb() {
        if (zzfms.zza() != zzflh.CTV) {
            return 2;
        }
        return zza;
    }
}
