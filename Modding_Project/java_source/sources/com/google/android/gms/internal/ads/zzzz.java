package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzzz {
    private static final Comparator zza = new Comparator() { // from class: com.google.android.gms.internal.ads.zzzv
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((zzzx) obj).zza - ((zzzx) obj2).zza;
        }
    };
    private static final Comparator zzb = new Comparator() { // from class: com.google.android.gms.internal.ads.zzzw
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return Float.compare(((zzzx) obj).zzc, ((zzzx) obj2).zzc);
        }
    };
    private int zzf;
    private int zzg;
    private int zzh;
    private final zzzx[] zzd = new zzzx[5];
    private final ArrayList zzc = new ArrayList();
    private int zze = -1;

    public zzzz(int i) {
    }

    public final float zza(float f) {
        int i = 0;
        if (this.zze != 0) {
            Collections.sort(this.zzc, zzb);
            this.zze = 0;
        }
        float f2 = this.zzg;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.zzc;
            if (i < arrayList.size()) {
                zzzx zzzxVar = (zzzx) arrayList.get(i);
                i2 += zzzxVar.zzb;
                if (i2 >= 0.5f * f2) {
                    return zzzxVar.zzc;
                }
                i++;
            } else if (arrayList.isEmpty()) {
                return Float.NaN;
            } else {
                return ((zzzx) arrayList.get(arrayList.size() - 1)).zzc;
            }
        }
    }

    public final void zzb(int i, float f) {
        zzzx zzzxVar;
        if (this.zze != 1) {
            Collections.sort(this.zzc, zza);
            this.zze = 1;
        }
        int i2 = this.zzh;
        if (i2 > 0) {
            zzzx[] zzzxVarArr = this.zzd;
            int i3 = i2 - 1;
            this.zzh = i3;
            zzzxVar = zzzxVarArr[i3];
        } else {
            zzzxVar = new zzzx(null);
        }
        int i4 = this.zzf;
        this.zzf = i4 + 1;
        zzzxVar.zza = i4;
        zzzxVar.zzb = i;
        zzzxVar.zzc = f;
        ArrayList arrayList = this.zzc;
        arrayList.add(zzzxVar);
        this.zzg += i;
        while (true) {
            int i5 = this.zzg;
            if (i5 > 2000) {
                int i6 = i5 + C.PRIORITY_PROCESSING_FOREGROUND;
                zzzx zzzxVar2 = (zzzx) arrayList.get(0);
                int i7 = zzzxVar2.zzb;
                if (i7 <= i6) {
                    this.zzg -= i7;
                    arrayList.remove(0);
                    int i8 = this.zzh;
                    if (i8 < 5) {
                        zzzx[] zzzxVarArr2 = this.zzd;
                        this.zzh = i8 + 1;
                        zzzxVarArr2[i8] = zzzxVar2;
                    }
                } else {
                    zzzxVar2.zzb = i7 - i6;
                    this.zzg -= i6;
                }
            } else {
                return;
            }
        }
    }

    public final void zzc() {
        this.zzc.clear();
        this.zze = -1;
        this.zzf = 0;
        this.zzg = 0;
    }
}
