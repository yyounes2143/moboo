package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzazl implements Runnable {
    final /* synthetic */ zzazm zza;

    public zzazl(zzazm zzazmVar) {
        this.zza = zzazmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<zzazn> list;
        zzazm zzazmVar = this.zza;
        obj = zzazmVar.zzc;
        synchronized (obj) {
            z = zzazmVar.zzd;
            if (z) {
                z2 = zzazmVar.zze;
                if (z2) {
                    zzazmVar.zzd = false;
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("App went background");
                    list = zzazmVar.zzf;
                    for (zzazn zzaznVar : list) {
                        try {
                            zzaznVar.zza(false);
                        } catch (Exception e) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
                        }
                    }
                }
            }
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("App is still foreground");
        }
    }
}
