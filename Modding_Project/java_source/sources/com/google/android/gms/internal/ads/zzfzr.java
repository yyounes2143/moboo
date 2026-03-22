package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfzr extends zzfyh {
    private final transient zzfyf zza;
    private final transient zzfyc zzb;

    public zzfzr(zzfyf zzfyfVar, zzfyc zzfycVar) {
        this.zza = zzfyfVar;
        this.zzb = zzfycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfxx, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (this.zza.get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfyh, com.google.android.gms.internal.ads.zzfxx, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.ads.zzfxx
    public final int zza(Object[] objArr, int i) {
        return this.zzb.zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzfyh, com.google.android.gms.internal.ads.zzfxx
    public final zzfyc zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfyh, com.google.android.gms.internal.ads.zzfxx
    public final zzgai zze() {
        return this.zzb.listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfxx
    public final boolean zzf() {
        return true;
    }
}
