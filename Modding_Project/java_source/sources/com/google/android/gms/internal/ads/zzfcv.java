package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfcv {
    public static com.google.android.gms.ads.internal.client.zzr zza(Context context, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzfbv zzfbvVar = (zzfbv) it.next();
            if (zzfbvVar.zzc) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(zzfbvVar.zza, zzfbvVar.zzb));
            }
        }
        return new com.google.android.gms.ads.internal.client.zzr(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static zzfbv zzb(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        if (zzrVar.zzi) {
            return new zzfbv(-3, 0, true);
        }
        return new zzfbv(zzrVar.zze, zzrVar.zzb, false);
    }
}
