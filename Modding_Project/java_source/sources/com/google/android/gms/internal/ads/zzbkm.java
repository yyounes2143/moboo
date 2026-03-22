package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbkm implements zzbjw {
    private final Object zza = new Object();
    private final Map zzb = new HashMap();

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        String concat;
        String str = (String) map.get("id");
        String str2 = (String) map.get("fail");
        String str3 = (String) map.get("fail_reason");
        String str4 = (String) map.get("fail_stack");
        String str5 = (String) map.get("result");
        if (true == TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str4)) {
            concat = "";
        } else {
            concat = "\n".concat(String.valueOf(str4));
        }
        synchronized (this.zza) {
            try {
                zzbkl zzbklVar = (zzbkl) this.zzb.remove(str);
                if (zzbklVar == null) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Received result for unexpected method invocation: " + str);
                } else if (!TextUtils.isEmpty(str2)) {
                    zzbklVar.zza(str3 + concat);
                } else if (str5 == null) {
                    zzbklVar.zzb(null);
                } else {
                    try {
                        JSONObject jSONObject = new JSONObject(str5);
                        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                            com.google.android.gms.ads.internal.util.zze.zza("Result GMSG: " + jSONObject.toString(2));
                        }
                        zzbklVar.zzb(jSONObject);
                    } catch (JSONException e) {
                        zzbklVar.zza(e.getMessage());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ListenableFuture zzb(zzbnd zzbndVar, String str, JSONObject jSONObject) {
        zzcaf zzcafVar = new zzcaf();
        com.google.android.gms.ads.internal.zzv.zzr();
        String uuid = UUID.randomUUID().toString();
        zzc(uuid, new zzbkk(this, zzcafVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", uuid);
            jSONObject2.put("args", jSONObject);
            zzbndVar.zzp(str, jSONObject2);
            return zzcafVar;
        } catch (Exception e) {
            zzcafVar.zzd(e);
            return zzcafVar;
        }
    }

    public final void zzc(String str, zzbkl zzbklVar) {
        synchronized (this.zza) {
            this.zzb.put(str, zzbklVar);
        }
    }
}
