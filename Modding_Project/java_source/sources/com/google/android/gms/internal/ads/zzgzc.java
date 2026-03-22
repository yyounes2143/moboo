package com.google.android.gms.internal.ads;

import java.util.AbstractList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgzc extends AbstractList {
    private final zzgza zza;
    private final zzgzb zzb;

    public zzgzc(zzgza zzgzaVar, zzgzb zzgzbVar) {
        this.zza = zzgzaVar;
        this.zzb = zzgzbVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.zzb.zzb(this.zza.zzd(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
