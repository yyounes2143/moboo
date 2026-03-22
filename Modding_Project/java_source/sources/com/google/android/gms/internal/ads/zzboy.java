package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzboy implements zzbkl {
    private final zzcaf zza;

    public zzboy(zzboz zzbozVar, zzcaf zzcafVar) {
        this.zza = zzcafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkl
    public final void zza(@Nullable String str) {
        try {
            if (str == null) {
                this.zza.zzd(new zzboc());
            } else {
                this.zza.zzd(new zzboc(str));
            }
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkl
    public final void zzb(JSONObject jSONObject) {
        try {
            this.zza.zzc(jSONObject);
        } catch (IllegalStateException unused) {
        } catch (JSONException e) {
            this.zza.zzd(e);
        }
    }
}
