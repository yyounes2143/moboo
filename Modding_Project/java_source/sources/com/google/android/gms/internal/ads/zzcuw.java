package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcuw {
    private final zzfgt zza;
    private final VersionInfoParcel zzb;
    private final ApplicationInfo zzc;
    private final String zzd;
    private final List zze;
    private final PackageInfo zzf;
    private final zzhfp zzg;
    private final String zzh;
    private final zzety zzi;
    private final com.google.android.gms.ads.internal.util.zzg zzj;
    private final zzfcp zzk;
    private final int zzl;
    private final zzdbj zzm;

    public zzcuw(zzfgt zzfgtVar, VersionInfoParcel versionInfoParcel, ApplicationInfo applicationInfo, String str, List list, @Nullable PackageInfo packageInfo, zzhfp zzhfpVar, com.google.android.gms.ads.internal.util.zzg zzgVar, String str2, zzety zzetyVar, zzfcp zzfcpVar, zzdbj zzdbjVar, int i) {
        this.zza = zzfgtVar;
        this.zzb = versionInfoParcel;
        this.zzc = applicationInfo;
        this.zzd = str;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = zzhfpVar;
        this.zzh = str2;
        this.zzi = zzetyVar;
        this.zzj = zzgVar;
        this.zzk = zzfcpVar;
        this.zzm = zzdbjVar;
        this.zzl = i;
    }

    public static /* synthetic */ zzbvl zza(zzcuw zzcuwVar, ListenableFuture listenableFuture, Bundle bundle) {
        zzcuv zzcuvVar = (zzcuv) listenableFuture.get();
        Bundle bundle2 = zzcuvVar.zza;
        String str = (String) ((ListenableFuture) zzcuwVar.zzg.zzb()).get();
        boolean z = false;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhh)).booleanValue() && zzcuwVar.zzj.zzN()) {
            z = true;
        }
        boolean z2 = z;
        String str2 = zzcuwVar.zzh;
        PackageInfo packageInfo = zzcuwVar.zzf;
        List list = zzcuwVar.zze;
        String str3 = zzcuwVar.zzd;
        return new zzbvl(bundle2, zzcuwVar.zzb, zzcuwVar.zzc, str3, list, packageInfo, str, str2, null, null, z2, zzcuwVar.zzk.zza(), bundle, zzcuvVar.zzb, zzcuwVar.zzl);
    }

    public final ListenableFuture zzb(Bundle bundle) {
        boolean z;
        this.zzm.zza();
        zzfgn zzfgnVar = zzfgn.SIGNALS;
        zzcuv zzcuvVar = new zzcuv(new Bundle(), new Bundle());
        if (this.zzl == 2) {
            z = true;
        } else {
            z = false;
        }
        return zzfgd.zzc(this.zzi.zza(zzcuvVar, bundle, z), zzfgnVar, this.zza).zza();
    }

    public final ListenableFuture zzc() {
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue()) {
            Bundle bundle2 = this.zzk.zzs;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            bundle.putBoolean("ls", false);
        }
        final ListenableFuture zzb = zzb(bundle);
        return this.zza.zza(zzfgn.REQUEST_PARCEL, zzb, (ListenableFuture) this.zzg.zzb()).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzcuu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzcuw.zza(zzcuw.this, zzb, bundle);
            }
        }).zza();
    }
}
