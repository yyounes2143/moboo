package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzamh implements zzakg {
    private final List zza;
    private final long[] zzb;
    private final long[] zzc;

    public zzamh(List list) {
        this.zza = Collections.unmodifiableList(new ArrayList(list));
        int size = list.size();
        this.zzb = new long[size + size];
        for (int i = 0; i < list.size(); i++) {
            zzalw zzalwVar = (zzalw) list.get(i);
            long[] jArr = this.zzb;
            int i2 = i + i;
            jArr[i2] = zzalwVar.zzb;
            jArr[i2 + 1] = zzalwVar.zzc;
        }
        long[] jArr2 = this.zzb;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.zzc = copyOf;
        Arrays.sort(copyOf);
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public final int zza() {
        return this.zzc.length;
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public final long zzb(int i) {
        boolean z;
        boolean z2 = false;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        long[] jArr = this.zzc;
        if (i < jArr.length) {
            z2 = true;
        }
        zzdc.zzd(z2);
        return jArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public final List zzc(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (true) {
            List list = this.zza;
            if (i >= list.size()) {
                break;
            }
            long[] jArr = this.zzb;
            int i2 = i + i;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                zzalw zzalwVar = (zzalw) list.get(i);
                zzcu zzcuVar = zzalwVar.zza;
                if (zzcuVar.zze == -3.4028235E38f) {
                    arrayList2.add(zzalwVar);
                } else {
                    arrayList.add(zzcuVar);
                }
            }
            i++;
        }
        Collections.sort(arrayList2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzamg
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((zzalw) obj).zzb, ((zzalw) obj2).zzb);
            }
        });
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            zzcs zzb = ((zzalw) arrayList2.get(i3)).zza.zzb();
            zzb.zze((-1) - i3, 1);
            arrayList.add(zzb.zzp());
        }
        return arrayList;
    }
}
