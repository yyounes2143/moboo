package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzezd implements zzfur {
    final /* synthetic */ zzezh zza;

    public zzezd(zzezh zzezhVar) {
        this.zza = zzezhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfur
    @NullableDecl
    public final /* bridge */ /* synthetic */ Object apply(@NullableDecl Object obj) {
        zzfem zze;
        zzezf zzezfVar;
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("", (zzdyq) obj);
        com.google.android.gms.ads.internal.util.zze.zza("Failed to get a cache key, reverting to legacy flow.");
        zzezh zzezhVar = this.zza;
        zze = zzezhVar.zze();
        zzezhVar.zzd = new zzezf(null, zze, null);
        zzezfVar = zzezhVar.zzd;
        return zzezfVar;
    }
}
