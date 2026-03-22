package com.google.android.gms.internal.ads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdmb {
    private final Executor zza;
    private final zzdlw zzb;
    private final zzdrx zzc;

    public zzdmb(Executor executor, zzdlw zzdlwVar, zzdrx zzdrxVar) {
        this.zza = executor;
        this.zzb = zzdlwVar;
        this.zzc = zzdrxVar;
    }

    public final ListenableFuture zza(JSONObject jSONObject, String str) {
        ListenableFuture zzh;
        JSONArray optJSONArray = jSONObject.optJSONArray("custom_assets");
        if (optJSONArray == null) {
            return zzgcy.zzh(Collections.EMPTY_LIST);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue()) {
            this.zzc.zza().putLong(zzdrl.NATIVE_ASSETS_LOADING_CUSTOM_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject == null) {
                zzh = zzgcy.zzh(null);
            } else {
                final String optString = optJSONObject.optString("name");
                if (optString == null) {
                    zzh = zzgcy.zzh(null);
                } else {
                    String optString2 = optJSONObject.optString("type");
                    if (TypedValues.Custom.S_STRING.equals(optString2)) {
                        zzh = zzgcy.zzh(new zzdma(optString, optJSONObject.optString("string_value")));
                    } else if ("image".equals(optString2)) {
                        zzh = zzgcy.zzm(this.zzb.zze(optJSONObject, "image_value", null), new zzfur() { // from class: com.google.android.gms.internal.ads.zzdly
                            @Override // com.google.android.gms.internal.ads.zzfur
                            public final Object apply(Object obj) {
                                return new zzdma(optString, (zzbft) obj);
                            }
                        }, this.zza);
                    } else {
                        zzh = zzgcy.zzh(null);
                    }
                }
            }
            arrayList.add(zzh);
        }
        return zzgcy.zzm(zzgcy.zzd(arrayList), new zzfur() { // from class: com.google.android.gms.internal.ads.zzdlz
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzdma zzdmaVar : (List) obj) {
                    if (zzdmaVar != null) {
                        arrayList2.add(zzdmaVar);
                    }
                }
                return arrayList2;
            }
        }, this.zza);
    }
}
