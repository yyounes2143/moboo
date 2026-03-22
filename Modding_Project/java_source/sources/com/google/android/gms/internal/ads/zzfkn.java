package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfkn implements Comparator {
    final /* synthetic */ zzfkt zza;

    public zzfkn(zzfkt zzfktVar) {
        this.zza = zzfktVar;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzfkl zzfklVar = (zzfkl) obj;
        zzfkl zzfklVar2 = (zzfkl) obj2;
        Object zzc = zzfklVar2.zzc();
        zzfkt zzfktVar = this.zza;
        int compare = Double.compare(zzfkt.zzc(zzfktVar, zzfktVar.zza(zzc)), zzfkt.zzc(zzfktVar, zzfktVar.zza(zzfklVar.zzc())));
        if (compare == 0) {
            return Long.compare(zzfklVar.zzb(), zzfklVar2.zzb());
        }
        return compare;
    }
}
