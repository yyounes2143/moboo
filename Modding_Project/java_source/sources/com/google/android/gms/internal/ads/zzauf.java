package com.google.android.gms.internal.ads;

import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzauf implements PackageManager$OnChecksumsReadyListener {
    final zzgds zza = zzgds.zze();

    public final void onChecksumsReady(List list) {
        int type;
        byte[] value;
        if (list == null) {
            this.zza.zzc("");
            return;
        }
        try {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ApkChecksum Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i));
                type = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getType();
                if (type == 8) {
                    zzgds zzgdsVar = this.zza;
                    zzgap zzf = zzgap.zzi().zzf();
                    value = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getValue();
                    zzgdsVar.zzc(zzf.zzj(value, 0, value.length));
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        this.zza.zzc("");
    }
}
