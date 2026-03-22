package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaoi {
    private final List zza;
    private final String zzb = MimeTypes.VIDEO_MP2T;
    private final zzaet[] zzc;

    public zzaoi(List list, String str) {
        this.zza = list;
        this.zzc = new zzaet[list.size()];
    }

    public final void zza(long j, zzek zzekVar) {
        if (zzekVar.zza() >= 9) {
            int zzg = zzekVar.zzg();
            int zzg2 = zzekVar.zzg();
            int zzm = zzekVar.zzm();
            if (zzg == 434 && zzg2 == 1195456820 && zzm == 3) {
                zzada.zzb(j, zzekVar, this.zzc);
            }
        }
    }

    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        int i = 0;
        while (true) {
            zzaet[] zzaetVarArr = this.zzc;
            if (i < zzaetVarArr.length) {
                zzaofVar.zzc();
                zzaet zzw = zzadqVar.zzw(zzaofVar.zza(), 3);
                zzz zzzVar = (zzz) this.zza.get(i);
                String str = zzzVar.zzo;
                boolean z = true;
                if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                    z = false;
                }
                zzdc.zze(z, "Invalid closed caption MIME type provided: ".concat(String.valueOf(str)));
                zzx zzxVar = new zzx();
                zzxVar.zzO(zzaofVar.zzb());
                zzxVar.zzE(this.zzb);
                zzxVar.zzad(str);
                zzxVar.zzaf(zzzVar.zze);
                zzxVar.zzS(zzzVar.zzd);
                zzxVar.zzz(zzzVar.zzJ);
                zzxVar.zzP(zzzVar.zzr);
                zzw.zzm(zzxVar.zzaj());
                zzaetVarArr[i] = zzw;
                i++;
            } else {
                return;
            }
        }
    }
}
