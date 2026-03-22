package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeto implements zzetv {
    private final boolean zza;

    public zzeto(@Nullable zzezp zzezpVar) {
        boolean z;
        if (zzezpVar != null) {
            z = true;
        } else {
            z = false;
        }
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 36;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return zzgcy.zzh(new zzetm(this.zza, null));
    }
}
