package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeoa implements zzetv {
    private final zzfcp zza;

    public zzeoa(zzfcp zzfcpVar) {
        this.zza = zzfcpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 58;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return zzgcy.zzh(new zzeob(this.zza.zzp));
    }
}
