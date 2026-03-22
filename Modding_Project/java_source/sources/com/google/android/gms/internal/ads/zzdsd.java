package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdsd {
    private final zzdsi zza;
    private final Executor zzb;
    private final Map zzc;

    public zzdsd(zzdsi zzdsiVar, Executor executor) {
        this.zza = zzdsiVar;
        this.zzc = zzdsiVar.zza();
        this.zzb = executor;
    }

    public static /* bridge */ /* synthetic */ zzdsi zzb(zzdsd zzdsdVar) {
        return zzdsdVar.zza;
    }

    public static /* bridge */ /* synthetic */ Map zzc(zzdsd zzdsdVar) {
        return zzdsdVar.zzc;
    }

    public static /* bridge */ /* synthetic */ Executor zzd(zzdsd zzdsdVar) {
        return zzdsdVar.zzb;
    }

    public final zzdsc zza() {
        zzdsc zzdscVar = new zzdsc(this);
        zzdsc.zza(zzdscVar);
        return zzdscVar;
    }

    public final void zze() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlS)).booleanValue()) {
            return;
        }
        zzdsc zza = zza();
        zza.zzb("action", "pecr");
        zza.zzj();
    }
}
