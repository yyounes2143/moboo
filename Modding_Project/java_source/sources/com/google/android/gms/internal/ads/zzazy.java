package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzazy {
    private final int zza;
    private final zzazv zzb = new zzbaa();

    public zzazy(int i) {
        this.zza = i;
    }

    public final String zza(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            sb.append(((String) arrayList.get(i)).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] split = sb.toString().split("\n");
        if (split.length == 0) {
            return "";
        }
        zzazx zzazxVar = new zzazx();
        int i2 = this.zza;
        PriorityQueue priorityQueue = new PriorityQueue(i2, new zzazw(this));
        for (String str : split) {
            String[] zzb = zzazz.zzb(str, false);
            if (zzb.length != 0) {
                zzbad.zzc(zzb, i2, 6, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzazxVar.zzb.write(this.zzb.zzb(((zzbac) it.next()).zzb));
            } catch (IOException e) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Error while writing hash to byteStream", e);
            }
        }
        return zzazxVar.toString();
    }
}
