package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzyb extends zzbq {
    private boolean zza;
    private boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;
    private boolean zzg;
    private final SparseArray zzh;
    private final SparseBooleanArray zzi;

    public zzyb() {
        this.zzh = new SparseArray();
        this.zzi = new SparseBooleanArray();
        this.zza = true;
        this.zzb = true;
        this.zzc = true;
        this.zzd = true;
        this.zze = true;
        this.zzf = true;
        this.zzg = true;
    }

    public final zzyb zzw(zzbr zzbrVar) {
        super.zzj(zzbrVar);
        return this;
    }

    public final zzyb zzx(int i, boolean z) {
        SparseBooleanArray sparseBooleanArray = this.zzi;
        if (sparseBooleanArray.get(i) == z) {
            return this;
        }
        if (z) {
            sparseBooleanArray.put(i, true);
            return this;
        }
        sparseBooleanArray.delete(i);
        return this;
    }

    public /* synthetic */ zzyb(zzyc zzycVar, zzyn zzynVar) {
        super(zzycVar);
        this.zza = zzycVar.zzG;
        this.zzb = zzycVar.zzI;
        this.zzc = zzycVar.zzK;
        this.zzd = zzycVar.zzP;
        this.zze = zzycVar.zzQ;
        this.zzf = zzycVar.zzR;
        this.zzg = zzycVar.zzT;
        SparseArray zza = zzyc.zza(zzycVar);
        SparseArray sparseArray = new SparseArray();
        for (int i = 0; i < zza.size(); i++) {
            sparseArray.put(zza.keyAt(i), new HashMap((Map) zza.valueAt(i)));
        }
        this.zzh = sparseArray;
        this.zzi = zzyc.zzb(zzycVar).clone();
    }
}
