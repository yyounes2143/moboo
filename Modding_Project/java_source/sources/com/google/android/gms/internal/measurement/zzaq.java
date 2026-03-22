package com.google.android.gms.internal.measurement;

import j$.util.Objects;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaq implements Iterator {
    final /* synthetic */ zzas zza;
    private int zzb;

    public zzaq(zzas zzasVar) {
        Objects.requireNonNull(zzasVar);
        this.zza = zzasVar;
        this.zzb = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb < this.zza.zzb().length()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        String zzb = this.zza.zzb();
        int i = this.zzb;
        if (i < zzb.length()) {
            this.zzb = i + 1;
            return new zzas(String.valueOf(i));
        }
        throw new NoSuchElementException();
    }
}
