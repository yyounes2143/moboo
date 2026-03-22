package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbcm;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbod;
import com.google.android.gms.internal.ads.zzboh;
import com.google.android.gms.internal.ads.zzbok;
import com.google.android.gms.internal.ads.zzbon;
import com.google.android.gms.internal.ads.zzbzh;
import com.google.android.gms.internal.ads.zzcaa;
import com.google.android.gms.internal.ads.zzcad;
import com.google.android.gms.internal.ads.zzdsc;
import com.google.android.gms.internal.ads.zzdsd;
import com.google.android.gms.internal.ads.zzfhb;
import com.google.android.gms.internal.ads.zzfhc;
import com.google.android.gms.internal.ads.zzfhq;
import com.google.android.gms.internal.ads.zzgcf;
import com.google.android.gms.internal.ads.zzgcy;
import com.google.android.gms.internal.ads.zzgdj;
import com.google.common.util.concurrent.ListenableFuture;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzf {
    private Context zza;
    private long zzb = 0;

    public static /* synthetic */ ListenableFuture zza(zzf zzfVar, Long l, zzdsd zzdsdVar, zzfhc zzfhcVar, zzfhq zzfhqVar, JSONObject jSONObject) {
        boolean optBoolean = jSONObject.optBoolean("isSuccessful", false);
        if (optBoolean) {
            zzv.zzp().zzi().zzs(jSONObject.getString("appSettingsJson"));
            if (l != null) {
                zzf(zzdsdVar, "cld_s", zzv.zzD().elapsedRealtime() - l.longValue());
            }
        }
        String optString = jSONObject.optString("errorMessage", "");
        if (!TextUtils.isEmpty(optString)) {
            zzfhcVar.zzc(optString);
        }
        zzfhcVar.zzg(optBoolean);
        zzfhqVar.zzc(zzfhcVar.zzm());
        return zzgcy.zzh(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zzf(zzdsd zzdsdVar, String str, long j) {
        if (zzdsdVar != null) {
            if (((Boolean) zzbd.zzc().zzb(zzbcv.zzmT)).booleanValue()) {
                zzdsc zza = zzdsdVar.zza();
                zza.zzb("action", "lat_init");
                zza.zzb(str, Long.toString(j));
                zza.zzj();
            }
        }
    }

    public final void zzc(Context context, VersionInfoParcel versionInfoParcel, String str, @Nullable Runnable runnable, zzfhq zzfhqVar, @Nullable zzdsd zzdsdVar, @Nullable Long l, boolean z) {
        zzd(context, versionInfoParcel, true, null, str, null, runnable, zzfhqVar, zzdsdVar, l, z);
    }

    @VisibleForTesting
    public final void zzd(Context context, VersionInfoParcel versionInfoParcel, boolean z, @Nullable zzbzh zzbzhVar, String str, @Nullable String str2, @Nullable Runnable runnable, final zzfhq zzfhqVar, @Nullable final zzdsd zzdsdVar, @Nullable final Long l, boolean z2) {
        zzfhc zzfhcVar;
        Exception exc;
        PackageInfo packageInfo;
        if (zzv.zzD().elapsedRealtime() - this.zzb < 5000) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Not retrying to fetch app settings");
            return;
        }
        this.zzb = zzv.zzD().elapsedRealtime();
        if (zzbzhVar != null && !TextUtils.isEmpty(zzbzhVar.zzc())) {
            if (zzv.zzD().currentTimeMillis() - zzbzhVar.zza() <= ((Long) zzbd.zzc().zzb(zzbcv.zzet)).longValue() && zzbzhVar.zzi()) {
                return;
            }
        }
        if (context == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Context not provided to fetch application settings");
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("App settings could not be fetched. Required parameters missing");
        } else {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.zza = applicationContext;
            final zzfhc zza = zzfhb.zza(context, 4);
            zza.zzi();
            zzbon zza2 = zzv.zzg().zza(this.zza, versionInfoParcel, zzfhqVar);
            zzboh zzbohVar = zzbok.zza;
            zzbod zza3 = zza2.zza("google.afma.config.fetchAppSettings", zzbohVar, zzbohVar);
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("app_id", str);
                    } else if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put(MintegralConstants.AD_UNIT_ID, str2);
                    }
                    jSONObject.put("is_init", z);
                    jSONObject.put("pn", context.getPackageName());
                    zzbcm zzbcmVar = zzbcv.zza;
                    jSONObject.put("experiment_ids", TextUtils.join(",", zzbd.zza().zza()));
                    jSONObject.put("js", versionInfoParcel.afmaVersion);
                    if (((Boolean) zzbd.zzc().zzb(zzbcv.zzjN)).booleanValue()) {
                        jSONObject.put("inspector_enabled", z2);
                    }
                    try {
                        ApplicationInfo applicationInfo = this.zza.getApplicationInfo();
                        if (applicationInfo != null && (packageInfo = Wrappers.packageManager(context).getPackageInfo(applicationInfo.packageName, 0)) != null) {
                            jSONObject.put("version", packageInfo.versionCode);
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        com.google.android.gms.ads.internal.util.zze.zza("Error fetching PackageInfo.");
                    }
                    ListenableFuture zzb = zza3.zzb(jSONObject);
                    try {
                        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.ads.internal.zzd
                            @Override // com.google.android.gms.internal.ads.zzgcf
                            public final ListenableFuture zza(Object obj) {
                                return zzf.zza(zzf.this, l, zzdsdVar, zza, zzfhqVar, (JSONObject) obj);
                            }
                        };
                        zzfhcVar = zza;
                        try {
                            zzgdj zzgdjVar = zzcaa.zzg;
                            ListenableFuture zzn = zzgcy.zzn(zzb, zzgcfVar, zzgdjVar);
                            if (runnable != null) {
                                zzb.addListener(runnable, zzgdjVar);
                            }
                            if (l != null) {
                                zzb.addListener(new Runnable() { // from class: com.google.android.gms.ads.internal.zze
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        zzf zzfVar = zzf.this;
                                        zzf.zzf(zzdsdVar, "cld_r", zzv.zzD().elapsedRealtime() - l.longValue());
                                    }
                                }, zzgdjVar);
                            }
                            if (((Boolean) zzbd.zzc().zzb(zzbcv.zzhW)).booleanValue()) {
                                zzcad.zzb(zzn, "ConfigLoader.maybeFetchNewAppSettings");
                            } else {
                                zzcad.zza(zzn, "ConfigLoader.maybeFetchNewAppSettings");
                            }
                        } catch (Exception e) {
                            e = e;
                            exc = e;
                            int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error requesting application settings", exc);
                            zzfhcVar.zzh(exc);
                            zzfhcVar.zzg(false);
                            zzfhqVar.zzc(zzfhcVar.zzm());
                        }
                    } catch (Exception e2) {
                        e = e2;
                        zzfhcVar = zza;
                    }
                } catch (Exception e3) {
                    exc = e3;
                    zzfhcVar = zza;
                    int i42 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Error requesting application settings", exc);
                    zzfhcVar.zzh(exc);
                    zzfhcVar.zzg(false);
                    zzfhqVar.zzc(zzfhcVar.zzm());
                }
            } catch (Exception e4) {
                e = e4;
                zzfhcVar = zza;
            }
        }
    }

    public final void zze(Context context, VersionInfoParcel versionInfoParcel, String str, zzbzh zzbzhVar, zzfhq zzfhqVar, boolean z) {
        String str2;
        if (zzbzhVar != null) {
            str2 = zzbzhVar.zzb();
        } else {
            str2 = null;
        }
        zzd(context, versionInfoParcel, false, zzbzhVar, str2, str, null, zzfhqVar, null, null, z);
    }
}
