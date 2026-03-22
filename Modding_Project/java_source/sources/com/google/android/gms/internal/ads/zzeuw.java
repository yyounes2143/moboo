package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeuw implements zzetu {
    @Nullable
    private final AdvertisingIdClient.Info zza;
    @Nullable
    private final String zzb;
    private final zzfrp zzc;

    public zzeuw(@Nullable AdvertisingIdClient.Info info, @Nullable String str, zzfrp zzfrpVar) {
        this.zza = info;
        this.zzb = str;
        this.zzc = zzfrpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            JSONObject zzg = com.google.android.gms.ads.internal.util.zzbs.zzg((JSONObject) obj, "pii");
            AdvertisingIdClient.Info info = this.zza;
            if (info != null && !TextUtils.isEmpty(info.getId())) {
                zzg.put("rdid", info.getId());
                zzg.put("is_lat", info.isLimitAdTrackingEnabled());
                zzg.put("idtype", "adid");
                zzfrp zzfrpVar = this.zzc;
                if (zzfrpVar.zzc()) {
                    zzg.put("paidv1_id_android_3p", zzfrpVar.zzb());
                    zzg.put("paidv1_creation_time_android_3p", zzfrpVar.zza());
                    return;
                }
                return;
            }
            String str = this.zzb;
            if (str != null) {
                zzg.put("pdid", str);
                zzg.put("pdidtype", "ssaid");
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed putting Ad ID.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
