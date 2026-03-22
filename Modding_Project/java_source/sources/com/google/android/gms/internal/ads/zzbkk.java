package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbkk implements zzbkl {
    final /* synthetic */ zzcaf zza;

    public zzbkk(zzbkm zzbkmVar, zzcaf zzcafVar) {
        this.zza = zzcafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkl
    public final void zza(@Nullable String str) {
        this.zza.zzd(new zzboc(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbkl
    public final void zzb(JSONObject jSONObject) {
        this.zza.zzc(jSONObject);
    }
}
