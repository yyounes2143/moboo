package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzboq implements zzbkl {
    final /* synthetic */ zzbor zza;
    private final zzbnt zzb;
    private final zzcaf zzc;

    public zzboq(zzbor zzborVar, zzbnt zzbntVar, zzcaf zzcafVar) {
        this.zza = zzborVar;
        this.zzb = zzbntVar;
        this.zzc = zzcafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkl
    public final void zza(@Nullable String str) {
        try {
            if (str == null) {
                this.zzc.zzd(new zzboc());
            } else {
                this.zzc.zzd(new zzboc(str));
            }
        } catch (IllegalStateException unused) {
        } catch (Throwable th) {
            this.zzb.zzb();
            throw th;
        }
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbkl
    public final void zzb(JSONObject jSONObject) {
        zzbof zzbofVar;
        try {
            try {
                zzcaf zzcafVar = this.zzc;
                zzbofVar = this.zza.zza;
                zzcafVar.zzc(zzbofVar.zza(jSONObject));
            } catch (IllegalStateException unused) {
            } catch (JSONException e) {
                this.zzc.zzd(e);
            }
        } finally {
            this.zzb.zzb();
        }
    }
}
