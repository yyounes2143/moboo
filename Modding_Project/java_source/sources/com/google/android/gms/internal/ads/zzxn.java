package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Comparator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzxn implements zzyq {
    protected final zzbm zza;
    protected final int zzb;
    protected final int[] zzc;
    private final zzz[] zzd;
    private int zze;

    public zzxn(zzbm zzbmVar, int[] iArr, int i) {
        boolean z;
        int length = iArr.length;
        if (length > 0) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        zzbmVar.getClass();
        this.zza = zzbmVar;
        this.zzb = length;
        this.zzd = new zzz[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.zzd[i2] = zzbmVar.zzb(iArr[i2]);
        }
        Arrays.sort(this.zzd, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxm
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzz) obj2).zzj - ((zzz) obj).zzj;
            }
        });
        this.zzc = new int[this.zzb];
        for (int i3 = 0; i3 < this.zzb; i3++) {
            this.zzc[i3] = zzbmVar.zza(this.zzd[i3]);
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzxn zzxnVar = (zzxn) obj;
            if (this.zza.equals(zzxnVar.zza) && Arrays.equals(this.zzc, zzxnVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zze;
        if (i == 0) {
            int identityHashCode = (System.identityHashCode(this.zza) * 31) + Arrays.hashCode(this.zzc);
            this.zze = identityHashCode;
            return identityHashCode;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final zzz zza(int i) {
        return this.zzd[i];
    }

    @Override // com.google.android.gms.internal.ads.zzyq
    public final zzz zzb() {
        return this.zzd[0];
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final zzbm zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final int zze(int i) {
        return this.zzc[i];
    }

    @Override // com.google.android.gms.internal.ads.zzyq
    public final int zzf() {
        return this.zzc[0];
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final int zzg(int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            if (this.zzc[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final int zzh() {
        return this.zzc.length;
    }
}
