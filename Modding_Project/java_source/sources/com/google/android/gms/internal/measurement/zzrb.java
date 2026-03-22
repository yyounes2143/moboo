package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzrb implements Supplier {
    private static final zzrb zza = new zzrb();
    private final Supplier zzb = Suppliers.ofInstance(new zzrd());

    @SideEffectFree
    public static boolean zza() {
        zza.get().zza();
        return true;
    }

    @SideEffectFree
    public static boolean zzb() {
        return zza.get().zzb();
    }

    @Override // com.google.common.base.Supplier
    /* renamed from: zzc */
    public final zzrc get() {
        return (zzrc) this.zzb.get();
    }
}
