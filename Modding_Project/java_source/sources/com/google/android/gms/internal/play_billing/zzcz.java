package com.google.android.gms.internal.play_billing;

import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcz extends zzdw {
    private final Object zza;
    private boolean zzb;

    public zzcz(Object obj) {
        this.zza = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.zzb) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.zzb) {
            this.zzb = true;
            return this.zza;
        }
        throw new NoSuchElementException();
    }
}
