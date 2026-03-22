package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbnr implements zzcaj {
    final /* synthetic */ zzbnt zza;

    public zzbnr(zzbnt zzbntVar) {
        this.zza = zzbntVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcaj
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzbny zzbnyVar;
        zzboa zzboaVar = (zzboa) obj;
        com.google.android.gms.ads.internal.util.zze.zza("Releasing engine reference.");
        zzbnyVar = this.zza.zzb;
        zzbnyVar.zzd();
    }
}
