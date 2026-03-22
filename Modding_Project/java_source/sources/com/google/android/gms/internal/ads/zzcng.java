package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcng implements zzbog {
    private final Context zza;
    private final zzayq zzb;
    private final PowerManager zzc;

    public zzcng(Context context, zzayq zzayqVar) {
        this.zza = context;
        this.zzb = zzayqVar;
        this.zzc = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.zzbog
    /* renamed from: zza */
    public final JSONObject zzb(zzcnj zzcnjVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzayt zzaytVar = zzcnjVar.zzf;
        if (zzaytVar == null) {
            jSONObject = new JSONObject();
        } else {
            zzayq zzayqVar = this.zzb;
            if (zzayqVar.zzd() != null) {
                boolean z = zzaytVar.zza;
                JSONObject jSONObject3 = new JSONObject();
                JSONObject put = jSONObject3.put("afmaVersion", zzayqVar.zzb()).put("activeViewJSON", zzayqVar.zzd()).put(CampaignEx.JSON_KEY_TIMESTAMP, zzcnjVar.zzd).put("adFormat", zzayqVar.zza()).put("hashCode", zzayqVar.zzc()).put("isMraid", false).put("isStopped", false).put("isPaused", zzcnjVar.zzb).put("isNative", zzayqVar.zze()).put("isScreenOn", this.zzc.isInteractive()).put("appMuted", com.google.android.gms.ads.internal.zzv.zzt().zze()).put("appVolume", com.google.android.gms.ads.internal.zzv.zzt().zza());
                Context context = this.zza;
                put.put("deviceVolume", com.google.android.gms.ads.internal.util.zzab.zzb(context.getApplicationContext()));
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                JSONObject put2 = jSONObject3.put("windowVisibility", zzaytVar.zzb).put("isAttachedToWindow", z);
                JSONObject jSONObject4 = new JSONObject();
                Rect rect = zzaytVar.zzc;
                JSONObject put3 = put2.put("viewBox", jSONObject4.put("top", rect.top).put("bottom", rect.bottom).put("left", rect.left).put("right", rect.right));
                JSONObject jSONObject5 = new JSONObject();
                Rect rect2 = zzaytVar.zzd;
                JSONObject put4 = put3.put("adBox", jSONObject5.put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                JSONObject jSONObject6 = new JSONObject();
                Rect rect3 = zzaytVar.zze;
                JSONObject put5 = put4.put("globalVisibleBox", jSONObject6.put("top", rect3.top).put("bottom", rect3.bottom).put("left", rect3.left).put("right", rect3.right)).put("globalVisibleBoxVisible", zzaytVar.zzf);
                JSONObject jSONObject7 = new JSONObject();
                Rect rect4 = zzaytVar.zzg;
                JSONObject put6 = put5.put("localVisibleBox", jSONObject7.put("top", rect4.top).put("bottom", rect4.bottom).put("left", rect4.left).put("right", rect4.right)).put("localVisibleBoxVisible", zzaytVar.zzh);
                JSONObject jSONObject8 = new JSONObject();
                Rect rect5 = zzaytVar.zzi;
                put6.put("hitBox", jSONObject8.put("top", rect5.top).put("bottom", rect5.bottom).put("left", rect5.left).put("right", rect5.right)).put("screenDensity", displayMetrics.density);
                jSONObject3.put("isVisible", zzcnjVar.zza);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbC)).booleanValue()) {
                    JSONArray jSONArray2 = new JSONArray();
                    List<Rect> list = zzaytVar.zzk;
                    if (list != null) {
                        for (Rect rect6 : list) {
                            jSONArray2.put(new JSONObject().put("top", rect6.top).put("bottom", rect6.bottom).put("left", rect6.left).put("right", rect6.right));
                        }
                    }
                    jSONObject3.put("scrollableContainerBoxes", jSONArray2);
                }
                if (!TextUtils.isEmpty(zzcnjVar.zze)) {
                    jSONObject3.put("doneReasonCode", "u");
                }
                jSONObject = jSONObject3;
            } else {
                throw new JSONException("Active view Info cannot be null.");
            }
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
