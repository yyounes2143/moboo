package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfgi implements zzgcu {
    final /* synthetic */ zzffz zza;
    final /* synthetic */ zzfgj zzb;

    public zzfgi(zzfgj zzfgjVar, zzffz zzffzVar) {
        this.zza = zzffzVar;
        this.zzb = zzfgjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzfgm zzfgmVar;
        zzfgmVar = this.zzb.zza.zzd;
        zzfgmVar.zzb(this.zza, th);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zzb(Object obj) {
        zzfgm zzfgmVar;
        zzfgmVar = this.zzb.zza.zzd;
        zzfgmVar.zzd(this.zza);
    }
}
