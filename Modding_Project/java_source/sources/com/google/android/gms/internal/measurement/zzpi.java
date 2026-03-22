package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzpi implements Supplier {
    private static final zzpi zza = new zzpi();
    private final Supplier zzb = Suppliers.ofInstance(new zzpk());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @SideEffectFree
    public static boolean zzb() {
        return zza.get().zzb();
    }

    @Override // com.google.common.base.Supplier
    /* renamed from: zzc */
    public final zzpj get() {
        return (zzpj) this.zzb.get();
    }
}
