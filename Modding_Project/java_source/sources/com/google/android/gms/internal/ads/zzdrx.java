package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdrx {
    private final ConcurrentHashMap zza;
    private final zzbzr zzb;
    private final zzfcp zzc;
    private final String zzd;
    private final String zze;
    private final com.google.android.gms.ads.internal.zzk zzf;
    private final Bundle zzg = new Bundle();
    private final Context zzh;

    public zzdrx(Context context, zzdsi zzdsiVar, zzbzr zzbzrVar, zzfcp zzfcpVar, String str, String str2, com.google.android.gms.ads.internal.zzk zzkVar) {
        ActivityManager.MemoryInfo zzc;
        String str3;
        ConcurrentHashMap zzc2 = zzdsiVar.zzc();
        this.zza = zzc2;
        this.zzb = zzbzrVar;
        this.zzc = zzfcpVar;
        this.zzd = str;
        this.zze = str2;
        this.zzf = zzkVar;
        this.zzh = context;
        zzc2.put(FirebaseAnalytics.Param.AD_FORMAT, str2.toUpperCase(Locale.ROOT));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjO)).booleanValue()) {
            int zzp = zzkVar.zzp();
            int i = zzp - 1;
            if (zzp != 0) {
                if (i == 0) {
                    str3 = "1";
                } else if (i != 1) {
                    str3 = "na";
                } else {
                    str3 = "2";
                }
                zzc2.put("asv", str3);
            } else {
                throw null;
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue()) {
            Runtime runtime = Runtime.getRuntime();
            zzd("rt_f", String.valueOf(runtime.freeMemory()));
            zzd("rt_m", String.valueOf(runtime.maxMemory()));
            zzd("rt_t", String.valueOf(runtime.totalMemory()));
            zzd("wv_c", String.valueOf(com.google.android.gms.ads.internal.zzv.zzp().zzb()));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcy)).booleanValue() && (zzc = com.google.android.gms.ads.internal.util.client.zzf.zzc(context)) != null) {
                zzd("mem_avl", String.valueOf(zzc.availMem));
                zzd("mem_tt", String.valueOf(zzc.totalMem));
                zzd("low_m", true != zzc.lowMemory ? "0" : "1");
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhd)).booleanValue()) {
            return;
        }
        int zzg = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzg(zzfcpVar) - 1;
        if (zzg != 0) {
            if (zzg != 1) {
                if (zzg != 2) {
                    if (zzg != 3) {
                        zzc2.put("se", "r_both");
                    } else {
                        zzc2.put("se", "r_adstring");
                    }
                } else {
                    zzc2.put("se", "r_adinfo");
                }
            } else {
                zzc2.put("request_id", str);
                zzc2.put("se", "query_g");
            }
            zzc2.put("scar", "true");
            zzd("ragent", zzfcpVar.zzd.zzp);
            zzd("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfcpVar.zzd)));
            return;
        }
        zzc2.put("request_id", str);
        zzc2.put("scar", "false");
    }

    public final Bundle zza() {
        return this.zzg;
    }

    public final Map zzb() {
        return this.zza;
    }

    public final void zzc() {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznx)).booleanValue()) {
            if (true != this.zzc.zzp) {
                str = "0";
            } else {
                str = "1";
            }
            zzd("brr", str);
        }
    }

    public final void zzd(String str, @Nullable String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.zza.put(str, str2);
        }
    }

    public final void zze(zzfcg zzfcgVar) {
        String str;
        zzfcf zzfcfVar = zzfcgVar.zzb;
        List list = zzfcfVar.zza;
        if (!list.isEmpty()) {
            int i = ((zzfbu) list.get(0)).zzb;
            zzd(FirebaseAnalytics.Param.AD_FORMAT, zzfbu.zza(i));
            if (i == 6) {
                ConcurrentHashMap concurrentHashMap = this.zza;
                if (true != this.zzb.zzm()) {
                    str = "0";
                } else {
                    str = "1";
                }
                concurrentHashMap.put("as", str);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcs)).booleanValue()) {
            zzd("mwl", Integer.toString(list.size()));
        }
        zzd("gqi", zzfcfVar.zzb.zzb);
    }

    public final void zzf(Bundle bundle) {
        if (bundle != null) {
            if (bundle.containsKey("cnt")) {
                zzd("network_coarse", Integer.toString(bundle.getInt("cnt")));
            }
            if (bundle.containsKey("gnt")) {
                zzd("network_fine", Integer.toString(bundle.getInt("gnt")));
            }
        }
    }
}
