package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzwz {
    private int zza;
    private final SparseArray zzb;
    private final zzdk zzc;

    public zzwz() {
        this(new zzdk() { // from class: com.google.android.gms.internal.ads.zzwy
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
            }
        });
    }

    public final Object zza(int i) {
        SparseArray sparseArray;
        if (this.zza == -1) {
            this.zza = 0;
        }
        while (true) {
            int i2 = this.zza;
            if (i2 > 0 && i < this.zzb.keyAt(i2)) {
                this.zza--;
            }
        }
        while (true) {
            int i3 = this.zza;
            sparseArray = this.zzb;
            if (i3 >= sparseArray.size() - 1 || i < sparseArray.keyAt(this.zza + 1)) {
                break;
            }
            this.zza++;
        }
        return sparseArray.valueAt(this.zza);
    }

    public final Object zzb() {
        SparseArray sparseArray = this.zzb;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public final void zzc(int i, Object obj) {
        boolean z;
        boolean z2 = true;
        if (this.zza == -1) {
            if (this.zzb.size() == 0) {
                z = true;
            } else {
                z = false;
            }
            zzdc.zzf(z);
            this.zza = 0;
        }
        SparseArray sparseArray = this.zzb;
        if (sparseArray.size() > 0) {
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            if (i < keyAt) {
                z2 = false;
            }
            zzdc.zzd(z2);
            if (keyAt == i) {
                this.zzc.zza(sparseArray.valueAt(sparseArray.size() - 1));
            }
        }
        sparseArray.append(i, obj);
    }

    public final void zzd() {
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.zzb;
            if (i < sparseArray.size()) {
                this.zzc.zza(sparseArray.valueAt(i));
                i++;
            } else {
                this.zza = -1;
                sparseArray.clear();
                return;
            }
        }
    }

    public final void zze(int i) {
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.zzb;
            if (i2 < sparseArray.size() - 1) {
                int i3 = i2 + 1;
                if (i >= sparseArray.keyAt(i3)) {
                    this.zzc.zza(sparseArray.valueAt(i2));
                    sparseArray.removeAt(i2);
                    int i4 = this.zza;
                    if (i4 > 0) {
                        this.zza = i4 - 1;
                    }
                    i2 = i3;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final boolean zzf() {
        if (this.zzb.size() == 0) {
            return true;
        }
        return false;
    }

    public zzwz(zzdk zzdkVar) {
        this.zzb = new SparseArray();
        this.zzc = zzdkVar;
        this.zza = -1;
    }
}
