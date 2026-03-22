package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfnn extends zzfni {
    public zzfnn(zzfnb zzfnbVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(zzfnbVar, hashSet, jSONObject, j);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        zzfnb zzfnbVar = this.zzd;
        JSONObject jSONObject = this.zzb;
        if (zzfmt.zzg(jSONObject, zzfnbVar.zza())) {
            return null;
        }
        zzfnbVar.zze(jSONObject);
        return jSONObject.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfnj, android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        onPostExecute((String) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfnj
    public final void zza(String str) {
        zzflx zza;
        if (!TextUtils.isEmpty(str) && (zza = zzflx.zza()) != null) {
            for (zzflf zzflfVar : zza.zzc()) {
                if (((zzfni) this).zza.contains(zzflfVar.zzh())) {
                    zzflfVar.zzg().zzh(str, this.zzc);
                }
            }
        }
        super.onPostExecute(str);
    }
}
