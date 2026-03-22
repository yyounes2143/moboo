package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import j$.util.Objects;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzyc extends zzbr {
    public static final zzyc zzF = new zzyc(new zzyb());
    public final boolean zzG;
    public final boolean zzH;
    public final boolean zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final boolean zzQ;
    public final boolean zzR;
    public final boolean zzS;
    public final boolean zzT;
    public final boolean zzU;
    private final SparseArray zzV;
    private final SparseBooleanArray zzW;

    static {
        String str = zzeu.zza;
        Integer.toString(1000, 36);
        Integer.toString(1001, 36);
        Integer.toString(1002, 36);
        Integer.toString(1003, 36);
        Integer.toString(1004, 36);
        Integer.toString(1005, 36);
        Integer.toString(1006, 36);
        Integer.toString(1007, 36);
        Integer.toString(1008, 36);
        Integer.toString(1009, 36);
        Integer.toString(1010, 36);
        Integer.toString(1011, 36);
        Integer.toString(1012, 36);
        Integer.toString(1013, 36);
        Integer.toString(1014, 36);
        Integer.toString(1015, 36);
        Integer.toString(1016, 36);
        Integer.toString(1017, 36);
        Integer.toString(1018, 36);
    }

    @Override // com.google.android.gms.internal.ads.zzbr
    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzyc.class == obj.getClass()) {
            zzyc zzycVar = (zzyc) obj;
            if (super.equals(zzycVar) && this.zzG == zzycVar.zzG && this.zzI == zzycVar.zzI && this.zzK == zzycVar.zzK && this.zzP == zzycVar.zzP && this.zzQ == zzycVar.zzQ && this.zzR == zzycVar.zzR && this.zzT == zzycVar.zzT) {
                SparseBooleanArray sparseBooleanArray = this.zzW;
                SparseBooleanArray sparseBooleanArray2 = zzycVar.zzW;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    int i = 0;
                    while (true) {
                        if (i < size) {
                            if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                                break;
                            }
                            i++;
                        } else {
                            SparseArray sparseArray = this.zzV;
                            SparseArray sparseArray2 = zzycVar.zzV;
                            int size2 = sparseArray.size();
                            if (sparseArray2.size() == size2) {
                                for (int i2 = 0; i2 < size2; i2++) {
                                    int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                                    if (indexOfKey >= 0) {
                                        Map map = (Map) sparseArray.valueAt(i2);
                                        Map map2 = (Map) sparseArray2.valueAt(indexOfKey);
                                        if (map2.size() == map.size()) {
                                            for (Map.Entry entry : map.entrySet()) {
                                                zzxe zzxeVar = (zzxe) entry.getKey();
                                                if (map2.containsKey(zzxeVar)) {
                                                    if (!Objects.equals(entry.getValue(), map2.get(zzxeVar))) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbr
    public final int hashCode() {
        return (((((((((((((((super.hashCode() + 31) * 31) + (this.zzG ? 1 : 0)) * 961) + (this.zzI ? 1 : 0)) * 961) + (this.zzK ? 1 : 0)) * 28629151) + (this.zzP ? 1 : 0)) * 31) + (this.zzQ ? 1 : 0)) * 31) + (this.zzR ? 1 : 0)) * 961) + (this.zzT ? 1 : 0)) * 31;
    }

    public final zzyb zzc() {
        return new zzyb(this, null);
    }

    @Nullable
    @Deprecated
    public final zzyd zzd(int i, zzxe zzxeVar) {
        Map map = (Map) this.zzV.get(i);
        if (map != null) {
            return (zzyd) map.get(zzxeVar);
        }
        return null;
    }

    public final boolean zze(int i) {
        return this.zzW.get(i);
    }

    @Deprecated
    public final boolean zzf(int i, zzxe zzxeVar) {
        Map map = (Map) this.zzV.get(i);
        if (map != null && map.containsKey(zzxeVar)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzyc(zzyb zzybVar) {
        super(zzybVar);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        SparseArray sparseArray;
        SparseBooleanArray sparseBooleanArray;
        z = zzybVar.zza;
        this.zzG = z;
        this.zzH = false;
        z2 = zzybVar.zzb;
        this.zzI = z2;
        this.zzJ = false;
        z3 = zzybVar.zzc;
        this.zzK = z3;
        this.zzL = false;
        this.zzM = false;
        this.zzN = false;
        this.zzO = false;
        z4 = zzybVar.zzd;
        this.zzP = z4;
        z5 = zzybVar.zze;
        this.zzQ = z5;
        z6 = zzybVar.zzf;
        this.zzR = z6;
        this.zzS = false;
        z7 = zzybVar.zzg;
        this.zzT = z7;
        this.zzU = false;
        sparseArray = zzybVar.zzh;
        this.zzV = sparseArray;
        sparseBooleanArray = zzybVar.zzi;
        this.zzW = sparseBooleanArray;
    }
}
