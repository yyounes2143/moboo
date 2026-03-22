package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbnx implements zzcaj {
    final /* synthetic */ zzbny zza;

    public zzbnx(zzbny zzbnyVar) {
        this.zza = zzbnyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcaj
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        final zzbmu zzbmuVar = (zzbmu) obj;
        zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbnw
            @Override // java.lang.Runnable
            public final void run() {
                zzbmu zzbmuVar2 = zzbmuVar;
                zzbmuVar2.zzr("/result", zzbjv.zzo);
                zzbmuVar2.zzc();
            }
        });
    }
}
