package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.common.util.concurrent.ListenableFuture;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbvh extends zzbvf {
    private final Object zza = new Object();
    private final Context zzb;
    @Nullable
    private SharedPreferences zzc;
    private final zzbod zzd;
    private final VersionInfoParcel zze;

    public zzbvh(Context context, zzbod zzbodVar, VersionInfoParcel versionInfoParcel) {
        this.zzb = context.getApplicationContext();
        this.zze = versionInfoParcel;
        this.zzd = zzbodVar;
    }

    public static /* synthetic */ Void zzb(zzbvh zzbvhVar, JSONObject jSONObject) {
        zzbcm zzbcmVar = zzbcv.zza;
        com.google.android.gms.ads.internal.client.zzbd.zzb();
        SharedPreferences zza = zzbco.zza(zzbvhVar.zzb);
        if (zza != null) {
            SharedPreferences.Editor edit = zza.edit();
            com.google.android.gms.ads.internal.client.zzbd.zza();
            int i = zzbel.zza;
            com.google.android.gms.ads.internal.client.zzbd.zza().zze(edit, 1, jSONObject);
            com.google.android.gms.ads.internal.client.zzbd.zzb();
            edit.commit();
            SharedPreferences sharedPreferences = zzbvhVar.zzc;
            if (sharedPreferences != null) {
                sharedPreferences.edit().putLong("js_last_update", com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis()).apply();
                return null;
            }
            return null;
        }
        return null;
    }

    public static JSONObject zzc(Context context, VersionInfoParcel versionInfoParcel) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (((Boolean) zzbev.zzb.zze()).booleanValue()) {
                jSONObject.put(CampaignEx.JSON_KEY_PACKAGE_NAME, context.getPackageName());
            }
            jSONObject.put("js", versionInfoParcel.afmaVersion);
            jSONObject.put("mf", zzbev.zzc.zze());
            jSONObject.put("cl", "756340629");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final ListenableFuture zza() {
        synchronized (this.zza) {
            try {
                if (this.zzc == null) {
                    this.zzc = this.zzb.getSharedPreferences("google_ads_flags_meta", 0);
                }
            } finally {
            }
        }
        SharedPreferences sharedPreferences = this.zzc;
        long j = 0;
        if (sharedPreferences != null) {
            j = sharedPreferences.getLong("js_last_update", 0L);
        }
        if (com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - j < ((Long) zzbev.zzd.zze()).longValue()) {
            return zzgcy.zzh(null);
        }
        return zzgcy.zzm(this.zzd.zzb(zzc(this.zzb, this.zze)), new zzfur() { // from class: com.google.android.gms.internal.ads.zzbvg
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                zzbvh.zzb(zzbvh.this, (JSONObject) obj);
                return null;
            }
        }, zzcaa.zzg);
    }
}
