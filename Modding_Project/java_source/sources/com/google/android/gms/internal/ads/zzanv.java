package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzanv {
    private final List zza;
    private final zzaet[] zzc;
    private final String zzb = MimeTypes.VIDEO_MP2T;
    private final zzfw zzd = new zzfw(new zzfv() { // from class: com.google.android.gms.internal.ads.zzanu
        @Override // com.google.android.gms.internal.ads.zzfv
        public final void zza(long j, zzek zzekVar) {
            zzada.zza(j, zzekVar, zzanv.this.zzc);
        }
    });

    public zzanv(List list, String str) {
        this.zza = list;
        this.zzc = new zzaet[list.size()];
    }

    public final void zzb() {
        this.zzd.zzd();
    }

    public final void zzc(long j, zzek zzekVar) {
        this.zzd.zzb(j, zzekVar);
    }

    public final void zzd(zzadq zzadqVar, zzaof zzaofVar) {
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
                String str2 = zzzVar.zza;
                if (str2 == null) {
                    str2 = zzaofVar.zzb();
                }
                zzx zzxVar = new zzx();
                zzxVar.zzO(str2);
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

    public final void zze() {
        this.zzd.zzd();
    }

    public final void zzf(int i) {
        this.zzd.zze(i);
    }
}
