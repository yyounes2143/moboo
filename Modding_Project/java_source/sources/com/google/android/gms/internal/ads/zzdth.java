package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdth {
    @Nullable
    private Long zza;
    private final String zzb;
    @Nullable
    private String zzc;
    @Nullable
    private Integer zzd;
    @Nullable
    private String zze;
    @Nullable
    private Integer zzf;

    public /* synthetic */ zzdth(String str, zzdti zzdtiVar) {
        this.zzb = str;
    }

    public static /* bridge */ /* synthetic */ String zza(zzdth zzdthVar) {
        String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkm);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", zzdthVar.zza);
            jSONObject.put("eventCategory", zzdthVar.zzb);
            jSONObject.putOpt("event", zzdthVar.zzc);
            jSONObject.putOpt("errorCode", zzdthVar.zzd);
            jSONObject.putOpt("rewardType", zzdthVar.zze);
            jSONObject.putOpt("rewardAmount", zzdthVar.zzf);
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not convert parameters to JSON.");
        }
        String jSONObject2 = jSONObject.toString();
        return str + "(\"h5adsEvent\"," + jSONObject2 + ");";
    }
}
