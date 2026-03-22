package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfmg extends BroadcastReceiver {
    final /* synthetic */ zzfmh zza;

    public zzfmg(zzfmh zzfmhVar) {
        this.zza = zzfmhVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean z;
        boolean z2;
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            zzfmh zzfmhVar = this.zza;
            z2 = zzfmhVar.zzd;
            zzfmhVar.zzd(true, z2);
            zzfmhVar.zzc = true;
        } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            zzfmh zzfmhVar2 = this.zza;
            z = zzfmhVar2.zzd;
            zzfmhVar2.zzd(false, z);
            zzfmhVar2.zzc = false;
        }
    }
}
