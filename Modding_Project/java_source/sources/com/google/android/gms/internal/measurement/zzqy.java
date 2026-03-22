package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzqy implements Supplier {
    private static final zzqy zza = new zzqy();
    private final Supplier zzb = Suppliers.ofInstance(new zzra());

    @SideEffectFree
    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // com.google.common.base.Supplier
    /* renamed from: zzb */
    public final zzqz get() {
        return (zzqz) this.zzb.get();
    }
}
