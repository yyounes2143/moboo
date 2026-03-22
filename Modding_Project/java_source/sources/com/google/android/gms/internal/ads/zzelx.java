package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzelx implements zzetu {
    final zzfcp zza;
    private final long zzb;

    public zzelx(zzfcp zzfcpVar, long j) {
        this.zza = zzfcpVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        boolean z;
        Bundle bundle = ((zzcuv) obj).zzb;
        zzfcp zzfcpVar = this.zza;
        bundle.putString("slotname", zzfcpVar.zzf);
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcpVar.zzd;
        boolean z2 = true;
        if (zzmVar.zzf) {
            bundle.putBoolean("test_request", true);
        }
        int i = zzmVar.zzg;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        zzfdd.zze(bundle, "tag_for_child_directed_treatment", i, z);
        if (zzmVar.zza >= 8) {
            int i2 = zzmVar.zzt;
            if (i2 == -1) {
                z2 = false;
            }
            zzfdd.zze(bundle, "tag_for_under_age_of_consent", i2, z2);
        }
        zzfdd.zzc(bundle, "url", zzmVar.zzl);
        zzfdd.zzd(bundle, "neighboring_content_urls", zzmVar.zzv);
        Bundle bundle2 = zzmVar.zzc;
        Bundle bundle3 = (Bundle) bundle2.clone();
        HashSet hashSet = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhL)).split(",", -1)));
        for (String str : bundle2.keySet()) {
            if (!hashSet.contains(str)) {
                bundle3.remove(str);
            }
        }
        zzfdd.zzb(bundle, "extras", bundle3);
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        Bundle bundle = ((zzcuv) obj).zza;
        zzfcp zzfcpVar = this.zza;
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcpVar.zzd;
        bundle.putInt("http_timeout_millis", zzmVar.zzw);
        bundle.putString("slotname", zzfcpVar.zzf);
        int i = zzfcpVar.zzo.zza;
        if (i != 0) {
            int i2 = i - 1;
            boolean z7 = true;
            if (i2 != 1) {
                if (i2 == 2) {
                    bundle.putBoolean("is_rewarded_interstitial", true);
                }
            } else {
                bundle.putBoolean("is_new_rewarded", true);
            }
            bundle.putLong("start_signals_timestamp", this.zzb);
            zzfdd.zzg(bundle, "is_sdk_preload", true, zzmVar.zzb());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
            long j = zzmVar.zzb;
            String format = simpleDateFormat.format(new Date(j));
            if (j != -1) {
                z = true;
            } else {
                z = false;
            }
            zzfdd.zzf(bundle, "cust_age", format, z);
            zzfdd.zzb(bundle, "extras", zzmVar.zzc);
            int i3 = zzmVar.zzd;
            if (i3 != -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzfdd.zze(bundle, "cust_gender", i3, z2);
            zzfdd.zzd(bundle, "kw", zzmVar.zze);
            int i4 = zzmVar.zzg;
            if (i4 != -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            zzfdd.zze(bundle, "tag_for_child_directed_treatment", i4, z3);
            if (zzmVar.zzf) {
                bundle.putBoolean("test_request", true);
            }
            bundle.putInt("ppt_p13n", zzmVar.zzy);
            int i5 = zzmVar.zza;
            if (i5 >= 2 && zzmVar.zzh) {
                z4 = true;
            } else {
                z4 = false;
            }
            zzfdd.zze(bundle, "d_imp_hdr", 1, z4);
            String str = zzmVar.zzi;
            if (i5 >= 2 && !TextUtils.isEmpty(str)) {
                z5 = true;
            } else {
                z5 = false;
            }
            zzfdd.zzf(bundle, "ppid", str, z5);
            Location location = zzmVar.zzk;
            if (location != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putFloat("radius", location.getAccuracy() * 1000.0f);
                bundle2.putLong("lat", (long) (location.getLatitude() * 1.0E7d));
                bundle2.putLong("long", (long) (1.0E7d * location.getLongitude()));
                bundle2.putLong("time", location.getTime() * 1000);
                bundle.putBundle("uule", bundle2);
            }
            zzfdd.zzc(bundle, "url", zzmVar.zzl);
            zzfdd.zzd(bundle, "neighboring_content_urls", zzmVar.zzv);
            zzfdd.zzb(bundle, "custom_targeting", zzmVar.zzn);
            zzfdd.zzd(bundle, "category_exclusions", zzmVar.zzo);
            zzfdd.zzc(bundle, "request_agent", zzmVar.zzp);
            zzfdd.zzc(bundle, "request_pkg", zzmVar.zzq);
            boolean z8 = zzmVar.zzr;
            if (i5 >= 7) {
                z6 = true;
            } else {
                z6 = false;
            }
            zzfdd.zzg(bundle, "is_designed_for_families", z8, z6);
            if (i5 >= 8) {
                int i6 = zzmVar.zzt;
                if (i6 == -1) {
                    z7 = false;
                }
                zzfdd.zze(bundle, "tag_for_under_age_of_consent", i6, z7);
                zzfdd.zzc(bundle, "max_ad_content_rating", zzmVar.zzu);
                return;
            }
            return;
        }
        throw null;
    }
}
