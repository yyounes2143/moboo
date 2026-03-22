package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzfxv extends zzfxw {
    Object[] zza;
    int zzb;
    boolean zzc;

    public zzfxv(int i) {
        zzfwz.zza(i, "initialCapacity");
        this.zza = new Object[i];
        this.zzb = 0;
    }

    private final void zzf(int i) {
        int length = this.zza.length;
        int zze = zzfxw.zze(length, this.zzb + i);
        if (zze <= length && !this.zzc) {
            return;
        }
        this.zza = Arrays.copyOf(this.zza, zze);
        this.zzc = false;
    }

    public final zzfxv zza(Object obj) {
        obj.getClass();
        zzf(1);
        Object[] objArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        objArr[i] = obj;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfxw
    public /* bridge */ /* synthetic */ zzfxw zzb(Object obj) {
        throw null;
    }

    public final zzfxw zzc(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            zzf(collection.size());
            if (collection instanceof zzfxx) {
                this.zzb = ((zzfxx) collection).zza(this.zza, this.zzb);
                return this;
            }
        }
        for (Object obj : iterable) {
            zzb(obj);
        }
        return this;
    }

    public final void zzd(Object[] objArr, int i) {
        zzfzm.zzb(objArr, 2);
        zzf(2);
        System.arraycopy(objArr, 0, this.zza, this.zzb, 2);
        this.zzb += 2;
    }
}
