package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import java.util.ArrayDeque;
import java.util.LinkedHashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzt extends LinkedHashMap {
    final /* synthetic */ zzv zza;

    public zzt(zzv zzvVar) {
        this.zza = zzvVar;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        int i;
        ArrayDeque arrayDeque;
        int i2;
        zzv zzvVar = this.zza;
        synchronized (zzvVar) {
            try {
                int size = size();
                i = zzvVar.zza;
                boolean z = false;
                if (size > i) {
                    arrayDeque = zzvVar.zzf;
                    arrayDeque.add(new Pair((String) entry.getKey(), ((zzu) entry.getValue()).zzb));
                    int size2 = size();
                    i2 = zzvVar.zza;
                    if (size2 > i2) {
                        z = true;
                    }
                    return z;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
