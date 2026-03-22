package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevg implements zzetu {
    @Nullable
    @VisibleForTesting
    final String zza;
    @VisibleForTesting
    final int zzb;

    public zzevg(@Nullable String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        int i;
        String str = this.zza;
        JSONObject jSONObject = (JSONObject) obj;
        if (!TextUtils.isEmpty(str) && (i = this.zzb) != -1) {
            try {
                JSONObject zzg = com.google.android.gms.ads.internal.util.zzbs.zzg(jSONObject, "pii");
                zzg.put("pvid", str);
                zzg.put("pvid_s", i);
            } catch (JSONException e) {
                com.google.android.gms.ads.internal.util.zze.zzb("Failed putting gms core app set ID info.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
