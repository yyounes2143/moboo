package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbyk {
    @GuardedBy("ScionComponent.class")
    @VisibleForTesting
    static zzbyk zzi;

    public static synchronized zzbyk zzb(Context context) {
        synchronized (zzbyk.class) {
            try {
                zzbyk zzbykVar = zzi;
                if (zzbykVar != null) {
                    return zzbykVar;
                }
                Context applicationContext = context.getApplicationContext();
                zzbcv.zza(applicationContext);
                com.google.android.gms.ads.internal.util.zzg zzi2 = com.google.android.gms.ads.internal.zzv.zzp().zzi();
                zzi2.zzp(applicationContext);
                zzbyc zzbycVar = new zzbyc(null);
                zzbycVar.zzb(applicationContext);
                zzbycVar.zzc(com.google.android.gms.ads.internal.zzv.zzD());
                zzbycVar.zza(zzi2);
                zzbycVar.zzd(com.google.android.gms.ads.internal.zzv.zzo());
                zzbyk zze = zzbycVar.zze();
                zzi = zze;
                ((zzbxw) ((zzbyd) zze).zzc.zzb()).zza();
                zzbyo zzbyoVar = (zzbyo) ((zzbyd) zzi).zzh.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaI)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzr();
                    Map zzw = com.google.android.gms.ads.internal.util.zzs.zzw((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaJ));
                    for (String str : zzw.keySet()) {
                        zzbyoVar.zzc(str);
                    }
                    zzbyoVar.zzd(new zzbym(zzbyoVar, zzw));
                }
                return zzi;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract zzbya zza();
}
