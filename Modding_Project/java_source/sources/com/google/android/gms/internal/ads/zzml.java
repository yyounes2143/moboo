package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzml {
    private final zzv zza;
    private final SparseArray zzb;

    public zzml(zzv zzvVar, SparseArray sparseArray) {
        this.zza = zzvVar;
        SparseArray sparseArray2 = new SparseArray(zzvVar.zzb());
        for (int i = 0; i < zzvVar.zzb(); i++) {
            int zza = zzvVar.zza(i);
            zzmk zzmkVar = (zzmk) sparseArray.get(zza);
            zzmkVar.getClass();
            sparseArray2.append(zza, zzmkVar);
        }
        this.zzb = sparseArray2;
    }

    public final int zza(int i) {
        return this.zza.zza(i);
    }

    public final int zzb() {
        return this.zza.zzb();
    }

    public final zzmk zzc(int i) {
        zzmk zzmkVar = (zzmk) this.zzb.get(i);
        zzmkVar.getClass();
        return zzmkVar;
    }

    public final boolean zzd(int i) {
        return this.zza.zzc(i);
    }
}
