package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzbms {
    public static void zza(zzbmt zzbmtVar, String str, Map map) {
        try {
            zzbmtVar.zze(str, com.google.android.gms.ads.internal.client.zzbb.zzb().zzk(map));
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not convert parameters to JSON.");
        }
    }

    public static void zzb(zzbmt zzbmtVar, String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject2);
        sb.append(");");
        String sb2 = sb.toString();
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Dispatching AFMA event: ".concat(sb2));
        zzbmtVar.zza(sb.toString());
    }

    public static void zzc(zzbmt zzbmtVar, String str, String str2) {
        zzbmtVar.zza(str + "(" + str2 + ");");
    }

    public static void zzd(zzbmt zzbmtVar, String str, JSONObject jSONObject) {
        zzbmtVar.zzb(str, jSONObject.toString());
    }
}
