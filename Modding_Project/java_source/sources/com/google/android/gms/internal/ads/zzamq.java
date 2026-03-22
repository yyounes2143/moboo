package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamq implements zzamr {
    private final List zza;
    private final zzaet[] zzc;
    private boolean zzd;
    private int zze;
    private int zzf;
    private final String zzb = MimeTypes.VIDEO_MP2T;
    private long zzg = -9223372036854775807L;

    public zzamq(List list, String str) {
        this.zza = list;
        this.zzc = new zzaet[list.size()];
    }

    private final boolean zzf(zzek zzekVar, int i) {
        if (zzekVar.zza() == 0) {
            return false;
        }
        if (zzekVar.zzm() != i) {
            this.zzd = false;
        }
        this.zze--;
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zza(zzek zzekVar) {
        zzaet[] zzaetVarArr;
        if (this.zzd) {
            if (this.zze != 2 || zzf(zzekVar, 32)) {
                if (this.zze != 1 || zzf(zzekVar, 0)) {
                    int zzc = zzekVar.zzc();
                    int zza = zzekVar.zza();
                    for (zzaet zzaetVar : this.zzc) {
                        zzekVar.zzL(zzc);
                        zzaetVar.zzr(zzekVar, zza);
                    }
                    this.zzf += zza;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        int i = 0;
        while (true) {
            zzaet[] zzaetVarArr = this.zzc;
            if (i < zzaetVarArr.length) {
                zzaoc zzaocVar = (zzaoc) this.zza.get(i);
                zzaofVar.zzc();
                zzaet zzw = zzadqVar.zzw(zzaofVar.zza(), 3);
                zzx zzxVar = new zzx();
                zzxVar.zzO(zzaofVar.zzb());
                zzxVar.zzE(this.zzb);
                zzxVar.zzad("application/dvbsubs");
                zzxVar.zzP(Collections.singletonList(zzaocVar.zzb));
                zzxVar.zzS(zzaocVar.zza);
                zzw.zzm(zzxVar.zzaj());
                zzaetVarArr[i] = zzw;
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
        boolean z2;
        if (this.zzd) {
            if (this.zzg != -9223372036854775807L) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzdc.zzf(z2);
            for (zzaet zzaetVar : this.zzc) {
                zzaetVar.zzt(this.zzg, 1, this.zzf, 0, null);
            }
            this.zzd = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.zzd = true;
        this.zzg = j;
        this.zzf = 0;
        this.zze = 2;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zzd = false;
        this.zzg = -9223372036854775807L;
    }
}
