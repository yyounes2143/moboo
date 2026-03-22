package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzhs extends BroadcastReceiver {
    private final zzdq zza;

    public zzhs(zzhu zzhuVar, zzdq zzdqVar, zzht zzhtVar) {
        this.zza = zzdqVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.zza.zzi(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzhr
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }
}
