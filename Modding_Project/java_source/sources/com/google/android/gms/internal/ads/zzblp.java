package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzblp implements zzgcf {
    final /* synthetic */ zzblh zza;

    public zzblp(zzblt zzbltVar, zzblh zzblhVar) {
        this.zza = zzblhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcf
    public final /* bridge */ /* synthetic */ ListenableFuture zza(Object obj) throws Exception {
        zzcaf zzcafVar = new zzcaf();
        ((zzbln) obj).zze(this.zza, new zzblo(this, zzcafVar));
        return zzcafVar;
    }
}
