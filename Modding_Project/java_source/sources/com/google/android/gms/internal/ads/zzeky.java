package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeky implements zzelg {
    final /* synthetic */ zzekz zza;

    public zzeky(zzekz zzekzVar) {
        this.zza = zzekzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final void zza() {
        zzekz zzekzVar = this.zza;
        synchronized (zzekzVar) {
            zzekzVar.zzj = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdew zzdewVar;
        zzekz zzekzVar = this.zza;
        zzdew zzdewVar2 = (zzdew) obj;
        synchronized (zzekzVar) {
            zzekzVar.zzj = zzdewVar2;
            zzdewVar = zzekzVar.zzj;
            zzdewVar.zzk();
        }
    }
}
