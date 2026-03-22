package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.ListIterator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfwt extends zzfwr implements ListIterator {
    final /* synthetic */ zzfwu zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwt(zzfwu zzfwuVar) {
        super(zzfwuVar);
        this.zzd = zzfwuVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i;
        zzfwu zzfwuVar = this.zzd;
        boolean isEmpty = zzfwuVar.isEmpty();
        zza();
        ((ListIterator) this.zza).add(obj);
        zzfwv zzfwvVar = zzfwuVar.zzf;
        i = zzfwvVar.zzb;
        zzfwvVar.zzb = i + 1;
        if (isEmpty) {
            zzfwuVar.zza();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        zza();
        return ((ListIterator) this.zza).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        zza();
        return ((ListIterator) this.zza).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        zza();
        return ((ListIterator) this.zza).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        zza();
        return ((ListIterator) this.zza).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        zza();
        ((ListIterator) this.zza).set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwt(zzfwu zzfwuVar, int i) {
        super(zzfwuVar, ((List) zzfwuVar.zzb).listIterator(i));
        this.zzd = zzfwuVar;
    }
}
