package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Nullable;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Locale;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfkc {
    private final zzdsd zza;
    private final String zzb;

    public zzfkc(zzdsd zzdsdVar, Context context) {
        CharSequence charSequence;
        this.zza = zzdsdVar;
        zzfrl zzfrlVar = com.google.android.gms.ads.internal.util.zzs.zza;
        try {
            charSequence = Wrappers.packageManager(context).getApplicationLabel(context.getPackageName());
        } catch (PackageManager.NameNotFoundException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get application name", e);
            charSequence = "";
        }
        this.zzb = charSequence.toString();
    }

    private final void zzj(@Nullable String str, String str2, long j, int i, int i2, @Nullable String str3, zzfkk zzfkkVar) {
        zzdsc zza = this.zza.zza();
        zza.zzb(str2, Long.toString(j));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb(MintegralConstants.AD_UNIT_ID, zzfkkVar.zzb());
        zza.zzb(FirebaseAnalytics.Param.AD_FORMAT, zzfkkVar.zza());
        if (str != null) {
            zza.zzb("action", str);
        }
        if (str3 != null) {
            zza.zzb("gqi", str3);
        }
        if (i >= 0) {
            zza.zzb("max_ads", Integer.toString(i));
        }
        if (i2 >= 0) {
            zza.zzb("cache_size", Integer.toString(i2));
        }
        zza.zzj();
    }

    public final void zza(int i, int i2, long j, zzfkk zzfkkVar) {
        zzdsc zza = this.zza.zza();
        zza.zzb("action", "cache_resize");
        zza.zzb("cs_ts", Long.toString(j));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb("orig_ma", Integer.toString(i));
        zza.zzb("max_ads", Integer.toString(i2));
        zza.zzb(FirebaseAnalytics.Param.AD_FORMAT, zzfkkVar.zza());
        zza.zzb(MintegralConstants.AD_UNIT_ID, zzfkkVar.zzb());
        zza.zzj();
    }

    public final void zzb(int i, int i2, long j, @Nullable Long l, @Nullable String str, zzfkk zzfkkVar) {
        zzdsc zza = this.zza.zza();
        zza.zzb("plaac_ts", Long.toString(j));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb(FirebaseAnalytics.Param.AD_FORMAT, zzfkkVar.zza());
        zza.zzb(MintegralConstants.AD_UNIT_ID, zzfkkVar.zzb());
        zza.zzb("max_ads", Integer.toString(i));
        zza.zzb("cache_size", Integer.toString(i2));
        zza.zzb("action", "is_ad_available");
        if (l != null) {
            zza.zzb("plaay_ts", Long.toString(l.longValue()));
        }
        if (str != null) {
            zza.zzb("gqi", str);
        }
        zza.zzj();
    }

    public final void zzc(long j, @Nullable String str, zzfkk zzfkkVar) {
        zzj(null, "pano_ts", j, -1, -1, str, zzfkkVar);
    }

    public final void zzd(long j, zzfkk zzfkkVar) {
        zzj(null, "paeo_ts", j, -1, -1, null, zzfkkVar);
    }

    public final void zze(long j, zzfkk zzfkkVar) {
        zzj("poll_ad", "ppac_ts", j, -1, -1, null, zzfkkVar);
    }

    public final void zzf(long j, int i, int i2, @Nullable String str, zzfkk zzfkkVar) {
        zzdsc zza = this.zza.zza();
        zza.zzb("ppla_ts", Long.toString(j));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb(FirebaseAnalytics.Param.AD_FORMAT, zzfkkVar.zza());
        zza.zzb(MintegralConstants.AD_UNIT_ID, zzfkkVar.zzb());
        zza.zzb("max_ads", Integer.toString(i));
        zza.zzb("cache_size", Integer.toString(i2));
        zza.zzb("action", "poll_ad");
        if (str != null) {
            zza.zzb("gqi", str);
        }
        zza.zzj();
    }

    public final void zzg(long j, int i, int i2, String str, zzfkk zzfkkVar) {
        zzj("poll_ad", "psvroc_ts", j, i, i2, str, zzfkkVar);
    }

    public final void zzh(Map map, long j) {
        zzdsc zza = this.zza.zza();
        zza.zzb("action", "start_preload");
        zza.zzb("sp_ts", Long.toString(j));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        for (AdFormat adFormat : map.keySet()) {
            String valueOf = String.valueOf(adFormat.name().toLowerCase(Locale.ENGLISH));
            zza.zzb(valueOf.concat("_count"), Integer.toString(((Integer) map.get(adFormat)).intValue()));
        }
        zza.zzj();
    }

    public final void zzi(int i, long j, zzfkk zzfkkVar) {
        zzdsc zza = this.zza.zza();
        zza.zzb("action", "start_preload");
        zza.zzb("sp_ts", Long.toString(j));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb(FirebaseAnalytics.Param.AD_FORMAT, zzfkkVar.zza());
        zza.zzb(MintegralConstants.AD_UNIT_ID, zzfkkVar.zzb());
        zza.zzb("max_ads", Integer.toString(i));
        zza.zzj();
    }
}
