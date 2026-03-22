package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevo implements zzetv {
    private final JSONObject zza;

    public zzevo(Context context) {
        this.zza = zzbvh.zzc(context, VersionInfoParcel.forPackage());
    }

    public static /* synthetic */ void zzc(zzevo zzevoVar, JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", zzevoVar.zza);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed putting version constants.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 46;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmk)).booleanValue()) {
            return zzgcy.zzh(new zzetu() { // from class: com.google.android.gms.internal.ads.zzevm
                @Override // com.google.android.gms.internal.ads.zzetu
                public final void zzb(Object obj) {
                    JSONObject jSONObject = (JSONObject) obj;
                }

                @Override // com.google.android.gms.internal.ads.zzetu
                public final /* synthetic */ void zza(Object obj) {
                }
            });
        }
        return zzgcy.zzh(new zzetu() { // from class: com.google.android.gms.internal.ads.zzevn
            @Override // com.google.android.gms.internal.ads.zzetu
            public final void zzb(Object obj) {
                zzevo.zzc(zzevo.this, (JSONObject) obj);
            }

            @Override // com.google.android.gms.internal.ads.zzetu
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }
}
