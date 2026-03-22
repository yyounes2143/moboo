package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzelw implements zzetv {
    private final Clock zza;
    private final zzfcp zzb;

    public zzelw(Clock clock, zzfcp zzfcpVar) {
        this.zza = clock;
        this.zzb = zzfcpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return zzgcy.zzh(new zzelx(this.zzb, this.zza.currentTimeMillis()));
    }
}
