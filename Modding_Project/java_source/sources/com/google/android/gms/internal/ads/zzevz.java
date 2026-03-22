package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevz implements zzetu {
    private final Bundle zza;

    public zzevz(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        Bundle bundle = this.zza;
        if (bundle != null) {
            try {
                com.google.android.gms.ads.internal.util.zzbs.zzg(com.google.android.gms.ads.internal.util.zzbs.zzg(jSONObject, "device"), "play_store").put("parental_controls", com.google.android.gms.ads.internal.client.zzbb.zzb().zzj(bundle));
            } catch (JSONException unused) {
                com.google.android.gms.ads.internal.util.zze.zza("Failed putting parental controls bundle.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
