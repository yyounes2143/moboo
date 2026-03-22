package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcrz implements zzgcu {
    final /* synthetic */ zzcsb zza;

    public zzcrz(zzcsb zzcsbVar) {
        this.zza = zzcsbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzdbf zzdbfVar;
        zzdbfVar = this.zza.zzf;
        zzdbfVar.zzn(false);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(@NullableDecl Object obj) {
        zzdbf zzdbfVar;
        zzbvl zzbvlVar = (zzbvl) obj;
        zzdbfVar = this.zza.zzf;
        zzdbfVar.zzn(true);
    }
}
