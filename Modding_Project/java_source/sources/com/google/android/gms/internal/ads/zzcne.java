package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcne implements zzbjw {
    final /* synthetic */ zzcnf zza;

    public zzcne(zzcnf zzcnfVar) {
        this.zza = zzcnfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        Executor executor;
        zzcnf zzcnfVar = this.zza;
        if (zzcnf.zzg(zzcnfVar, map)) {
            executor = zzcnfVar.zzc;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnd
                @Override // java.lang.Runnable
                public final void run() {
                    zzcnk zzcnkVar;
                    zzcnkVar = zzcne.this.zza.zzd;
                    zzcnkVar.zzj();
                }
            });
        }
    }
}
