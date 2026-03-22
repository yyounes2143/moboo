package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzefn implements zzedh {
    private final zzdpt zza;

    public zzefn(zzdpt zzdptVar) {
        this.zza = zzdptVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedh
    @Nullable
    public final zzedi zza(String str, JSONObject jSONObject) throws zzfcw {
        return new zzedi(this.zza.zzc(str, jSONObject), new zzeew(), str);
    }
}
