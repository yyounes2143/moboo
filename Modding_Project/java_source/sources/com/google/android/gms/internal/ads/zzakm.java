package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzakm implements zzadq {
    private final zzadq zzb;
    private final zzakj zzc;
    private final SparseArray zzd = new SparseArray();
    private boolean zze;

    public zzakm(zzadq zzadqVar, zzakj zzakjVar) {
        this.zzb = zzadqVar;
        this.zzc = zzakjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final void zzG() {
        this.zzb.zzG();
        if (this.zze) {
            int i = 0;
            while (true) {
                SparseArray sparseArray = this.zzd;
                if (i < sparseArray.size()) {
                    ((zzako) sparseArray.valueAt(i)).zzb(true);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final void zzP(zzaem zzaemVar) {
        this.zzb.zzP(zzaemVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzaet zzw(int i, int i2) {
        if (i2 != 3) {
            this.zze = true;
            return this.zzb.zzw(i, i2);
        }
        SparseArray sparseArray = this.zzd;
        zzako zzakoVar = (zzako) sparseArray.get(i);
        if (zzakoVar != null) {
            return zzakoVar;
        }
        zzako zzakoVar2 = new zzako(this.zzb.zzw(i, 3), this.zzc);
        sparseArray.put(i, zzakoVar2);
        return zzakoVar2;
    }
}
