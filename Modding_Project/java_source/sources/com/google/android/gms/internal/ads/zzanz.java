package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzanz implements zzans {
    final /* synthetic */ zzaob zza;
    private final zzej zzb = new zzej(new byte[4], 4);

    public zzanz(zzaob zzaobVar) {
        this.zza = zzaobVar;
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zza(zzek zzekVar) {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        SparseArray sparseArray3;
        int i;
        if (zzekVar.zzm() == 0 && (zzekVar.zzm() & 128) != 0) {
            zzekVar.zzM(6);
            int zza = zzekVar.zza() / 4;
            for (int i2 = 0; i2 < zza; i2++) {
                zzej zzejVar = this.zzb;
                zzekVar.zzG(zzejVar, 4);
                int zzd = zzejVar.zzd(16);
                zzejVar.zzn(3);
                if (zzd == 0) {
                    zzejVar.zzn(13);
                } else {
                    int zzd2 = zzejVar.zzd(13);
                    zzaob zzaobVar = this.zza;
                    sparseArray2 = zzaobVar.zzg;
                    if (sparseArray2.get(zzd2) == null) {
                        sparseArray3 = zzaobVar.zzg;
                        sparseArray3.put(zzd2, new zzant(new zzaoa(zzaobVar, zzd2)));
                        i = zzaobVar.zzm;
                        zzaobVar.zzm = i + 1;
                    }
                }
            }
            sparseArray = this.zza.zzg;
            sparseArray.remove(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zzb(zzer zzerVar, zzadq zzadqVar, zzaof zzaofVar) {
    }
}
