package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzdek;
import com.google.android.gms.internal.ads.zzdrx;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzw implements zzdek {
    private final zzdrx zza;
    private final zzv zzb;
    private final String zzc;
    private final int zzd;

    @VisibleForTesting
    public zzw(zzdrx zzdrxVar, zzv zzvVar, String str, int i) {
        this.zza = zzdrxVar;
        this.zzb = zzvVar;
        this.zzc = str;
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdek
    public final void zze(@Nullable zzbk zzbkVar) {
        String str;
        if (zzbkVar != null && this.zzd != 2) {
            if (!TextUtils.isEmpty(zzbkVar.zzc)) {
                try {
                    str = new JSONObject(zzbkVar.zzc).optString("request_id");
                } catch (JSONException e) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "RenderSignals.getRequestId");
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    this.zzb.zze(str, zzbkVar.zzc, this.zza);
                    return;
                }
                return;
            }
            this.zzb.zze(this.zzc, zzbkVar.zzb, this.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdek
    public final void zzf(@Nullable String str) {
    }
}
