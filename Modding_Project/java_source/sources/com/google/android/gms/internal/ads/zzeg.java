package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeg extends BroadcastReceiver {
    final /* synthetic */ zzei zza;

    public /* synthetic */ zzeg(zzei zzeiVar, zzeh zzehVar) {
        this.zza = zzeiVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, Intent intent) {
        Executor executor;
        executor = this.zza.zzb;
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzef
            @Override // java.lang.Runnable
            public final void run() {
                zzei.zzd(zzeg.this.zza, context);
            }
        });
    }
}
