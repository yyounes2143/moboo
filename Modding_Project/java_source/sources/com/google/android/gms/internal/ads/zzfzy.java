package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfzy extends zzgac {
    final /* synthetic */ Set zza;
    final /* synthetic */ Set zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfzy(Set set, Set set2) {
        super(null);
        this.zza = set;
        this.zzb = set2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (this.zza.contains(obj) && this.zzb.contains(obj)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (this.zza.containsAll(collection) && this.zzb.containsAll(collection)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return Collections.disjoint(this.zzb, this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i = 0;
        for (Object obj : this.zza) {
            if (this.zzb.contains(obj)) {
                i++;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzgac
    public final int zza() {
        return Math.min(zzgac.zzd(this.zza), zzgac.zzd(this.zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzgac
    public final int zzb() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgac, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzc */
    public final zzgai iterator() {
        return new zzfzx(this, this.zza, this.zzb);
    }
}
