package com.google.android.gms.internal.consent_sdk;

import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdg extends zzdk {
    private final Object zza;
    private boolean zzb;

    public zzdg(Object obj) {
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
