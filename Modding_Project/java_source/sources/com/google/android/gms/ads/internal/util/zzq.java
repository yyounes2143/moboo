package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzq extends BroadcastReceiver {
    final /* synthetic */ zzs zza;

    public /* synthetic */ zzq(zzs zzsVar, zzr zzrVar) {
        this.zza = zzsVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (Objects.equals(intent.getAction(), "android.intent.action.USER_PRESENT")) {
            zzs.zzf(this.zza, true);
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            zzs.zzf(this.zza, false);
        }
    }
}
