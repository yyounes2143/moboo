package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdnp implements Callable {
    private final com.google.android.gms.ads.internal.zza zza;
    private final Context zzb;
    private final zzdsd zzc;
    private final zzebt zzd;
    private final Executor zze;
    private final zzavl zzf;
    private final VersionInfoParcel zzg;
    private final zzfjr zzh;
    private final zzece zzi;
    private final zzfct zzj;

    public zzdnp(Context context, Executor executor, zzavl zzavlVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzcfo zzcfoVar, zzebt zzebtVar, zzfjr zzfjrVar, zzdsd zzdsdVar, zzece zzeceVar, zzfct zzfctVar) {
        this.zzb = context;
        this.zze = executor;
        this.zzf = zzavlVar;
        this.zzg = versionInfoParcel;
        this.zza = zzaVar;
        this.zzd = zzebtVar;
        this.zzh = zzfjrVar;
        this.zzc = zzdsdVar;
        this.zzi = zzeceVar;
        this.zzj = zzfctVar;
    }

    public static /* bridge */ /* synthetic */ Context zza(zzdnp zzdnpVar) {
        return zzdnpVar.zzb;
    }

    public static /* bridge */ /* synthetic */ zzavl zzb(zzdnp zzdnpVar) {
        return zzdnpVar.zzf;
    }

    public static /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.zza zzc(zzdnp zzdnpVar) {
        return zzdnpVar.zza;
    }

    public static /* bridge */ /* synthetic */ VersionInfoParcel zzd(zzdnp zzdnpVar) {
        return zzdnpVar.zzg;
    }

    public static /* bridge */ /* synthetic */ zzdsd zze(zzdnp zzdnpVar) {
        return zzdnpVar.zzc;
    }

    public static /* bridge */ /* synthetic */ zzebt zzf(zzdnp zzdnpVar) {
        return zzdnpVar.zzd;
    }

    public static /* bridge */ /* synthetic */ zzece zzg(zzdnp zzdnpVar) {
        return zzdnpVar.zzi;
    }

    public static /* bridge */ /* synthetic */ zzfct zzh(zzdnp zzdnpVar) {
        return zzdnpVar.zzj;
    }

    public static /* bridge */ /* synthetic */ zzfjr zzi(zzdnp zzdnpVar) {
        return zzdnpVar.zzh;
    }

    public static /* bridge */ /* synthetic */ Executor zzj(zzdnp zzdnpVar) {
        return zzdnpVar.zze;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzdns zzdnsVar = new zzdns(this);
        zzdnsVar.zzk();
        return zzdnsVar;
    }
}
