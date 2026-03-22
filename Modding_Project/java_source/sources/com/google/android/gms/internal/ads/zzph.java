package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzph extends BroadcastReceiver {
    final /* synthetic */ zzpj zza;

    public /* synthetic */ zzph(zzpj zzpjVar, zzpi zzpiVar) {
        this.zza = zzpjVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        zze zzeVar;
        zzpk zzpkVar;
        if (!isInitialStickyBroadcast()) {
            zzpj zzpjVar = this.zza;
            zzeVar = zzpjVar.zzh;
            zzpkVar = zzpjVar.zzg;
            zzpjVar.zzj(zzpe.zzd(context, intent, zzeVar, zzpkVar));
        }
    }
}
