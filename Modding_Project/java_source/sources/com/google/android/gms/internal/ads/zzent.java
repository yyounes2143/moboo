package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzent implements zzetv {
    private final zzgdj zza;
    private final VersionInfoParcel zzb;

    public zzent(VersionInfoParcel versionInfoParcel, zzgdj zzgdjVar) {
        this.zzb = versionInfoParcel;
        this.zza = zzgdjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 54;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzens
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzenu zzc;
                zzc = zzenu.zzc(zzent.this.zzb);
                return zzc;
            }
        });
    }
}
