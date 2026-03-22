package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import j$.util.Objects;
import java.util.AbstractMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfzp extends zzfyc {
    final /* synthetic */ zzfzq zza;

    public zzfzp(zzfzq zzfzqVar) {
        this.zza = zzfzqVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        zzfzq zzfzqVar = this.zza;
        i2 = zzfzqVar.zzc;
        zzfvc.zza(i, i2, FirebaseAnalytics.Param.INDEX);
        objArr = zzfzqVar.zzb;
        int i3 = i + i;
        Object obj = objArr[i3];
        Objects.requireNonNull(obj);
        objArr2 = zzfzqVar.zzb;
        Object obj2 = objArr2[i3 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.zza.zzc;
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzfxx
    public final boolean zzf() {
        return true;
    }
}
