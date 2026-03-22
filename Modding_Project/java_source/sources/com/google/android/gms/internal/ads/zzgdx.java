package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgdx extends zzgdg {
    final /* synthetic */ zzgdz zza;
    private final zzgce zzb;

    public zzgdx(zzgdz zzgdzVar, zzgce zzgceVar) {
        this.zza = zzgdzVar;
        this.zzb = zzgceVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final /* bridge */ /* synthetic */ Object zza() throws Exception {
        zzgce zzgceVar = this.zzb;
        ListenableFuture zza = zzgceVar.zza();
        zzfvc.zzd(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgceVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final void zzd(Throwable th) {
        this.zza.zzd(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final /* synthetic */ void zze(Object obj) {
        this.zza.zzn((ListenableFuture) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
