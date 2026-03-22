package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzul implements zzwv {
    private final zzfyc zza;
    private long zzb;

    public zzul(List list, List list2) {
        boolean z;
        int i = zzfyc.zzd;
        zzfxz zzfxzVar = new zzfxz();
        if (list.size() == list2.size()) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzfxzVar.zzf(new zzuk((zzwv) list.get(i2), (List) list2.get(i2)));
        }
        this.zza = zzfxzVar.zzi();
        this.zzb = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final long zzb() {
        int i = 0;
        long j = Long.MAX_VALUE;
        long j2 = Long.MAX_VALUE;
        while (true) {
            zzfyc zzfycVar = this.zza;
            if (i >= zzfycVar.size()) {
                break;
            }
            zzuk zzukVar = (zzuk) zzfycVar.get(i);
            long zzb = zzukVar.zzb();
            if ((zzukVar.zza().contains(1) || zzukVar.zza().contains(2) || zzukVar.zza().contains(4)) && zzb != Long.MIN_VALUE) {
                j = Math.min(j, zzb);
            }
            if (zzb != Long.MIN_VALUE) {
                j2 = Math.min(j2, zzb);
            }
            i++;
        }
        if (j != Long.MAX_VALUE) {
            this.zzb = j;
            return j;
        } else if (j2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        } else {
            long j3 = this.zzb;
            if (j3 != -9223372036854775807L) {
                return j3;
            }
            return j2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final long zzc() {
        int i = 0;
        long j = Long.MAX_VALUE;
        while (true) {
            zzfyc zzfycVar = this.zza;
            if (i >= zzfycVar.size()) {
                break;
            }
            long zzc = ((zzuk) zzfycVar.get(i)).zzc();
            if (zzc != Long.MIN_VALUE) {
                j = Math.min(j, zzc);
            }
            i++;
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final void zzm(long j) {
        int i = 0;
        while (true) {
            zzfyc zzfycVar = this.zza;
            if (i < zzfycVar.size()) {
                ((zzuk) zzfycVar.get(i)).zzm(j);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final boolean zzo(zzkv zzkvVar) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        do {
            long zzc = zzc();
            if (zzc == Long.MIN_VALUE) {
                break;
            }
            int i = 0;
            z = false;
            while (true) {
                zzfyc zzfycVar = this.zza;
                if (i >= zzfycVar.size()) {
                    break;
                }
                long zzc2 = ((zzuk) zzfycVar.get(i)).zzc();
                if (zzc2 != Long.MIN_VALUE && zzc2 <= zzkvVar.zza) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (zzc2 == zzc || z2) {
                    z |= ((zzuk) zzfycVar.get(i)).zzo(zzkvVar);
                }
                i++;
            }
            z3 |= z;
        } while (z);
        return z3;
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final boolean zzp() {
        int i = 0;
        while (true) {
            zzfyc zzfycVar = this.zza;
            if (i >= zzfycVar.size()) {
                return false;
            }
            if (((zzuk) zzfycVar.get(i)).zzp()) {
                return true;
            }
            i++;
        }
    }
}
