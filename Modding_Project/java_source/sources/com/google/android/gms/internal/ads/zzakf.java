package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzakf {
    public static void zza(zzakg zzakgVar, zzakk zzakkVar, zzdk zzdkVar) {
        for (int i = 0; i < zzakgVar.zza(); i++) {
            long zzb = zzakgVar.zzb(i);
            List zzc = zzakgVar.zzc(zzb);
            if (!zzc.isEmpty()) {
                if (i != zzakgVar.zza() - 1) {
                    long zzb2 = zzakgVar.zzb(i + 1) - zzakgVar.zzb(i);
                    if (zzb2 > 0) {
                        zzdkVar.zza(new zzakd(zzc, zzb, zzb2));
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
        }
    }
}
