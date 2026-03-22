package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzff implements Runnable {
    final /* synthetic */ zzfg zza;

    public zzff(zzfg zzfgVar) {
        this.zza = zzfgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbk zzbkVar;
        zzbk zzbkVar2;
        zzfg zzfgVar = this.zza;
        zzbkVar = zzfgVar.zza;
        if (zzbkVar != null) {
            try {
                zzbkVar2 = zzfgVar.zza;
                zzbkVar2.zze(1);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
