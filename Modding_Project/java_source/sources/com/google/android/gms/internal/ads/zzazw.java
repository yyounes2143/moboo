package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzazw implements Comparator {
    public zzazw(zzazy zzazyVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzbac zzbacVar = (zzbac) obj;
        zzbac zzbacVar2 = (zzbac) obj2;
        int i = zzbacVar.zzc - zzbacVar2.zzc;
        if (i != 0) {
            return i;
        }
        return Long.compare(zzbacVar.zza, zzbacVar2.zza);
    }
}
