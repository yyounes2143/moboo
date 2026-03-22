package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcnv implements zzhfv {
    private final zzhge zza;

    public zzcnv(zzhge zzhgeVar) {
        this.zza = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzb() {
        try {
            return new JSONObject(((zzcro) this.zza).zza().zzz);
        } catch (JSONException unused) {
            return null;
        }
    }
}
