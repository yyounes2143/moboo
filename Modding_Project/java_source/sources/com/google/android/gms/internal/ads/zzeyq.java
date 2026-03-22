package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeyq implements zzfex {
    public final zzezk zza;
    public final zzezm zzb;
    public final com.google.android.gms.ads.internal.client.zzm zzc;
    public final String zzd;
    public final Executor zze;
    public final com.google.android.gms.ads.internal.client.zzx zzf;
    public final zzfem zzg;

    public zzeyq(zzezk zzezkVar, zzezm zzezmVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, Executor executor, com.google.android.gms.ads.internal.client.zzx zzxVar, zzfem zzfemVar) {
        this.zza = zzezkVar;
        this.zzb = zzezmVar;
        this.zzc = zzmVar;
        this.zzd = str;
        this.zze = executor;
        this.zzf = zzxVar;
        this.zzg = zzfemVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfex
    public final zzfem zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzfex
    public final Executor zzb() {
        return this.zze;
    }
}
