package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfnm extends zzfni {
    public zzfnm(zzfnb zzfnbVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(zzfnbVar, hashSet, jSONObject, j);
    }

    private final void zzc(String str) {
        zzflx zza = zzflx.zza();
        if (zza != null) {
            for (zzflf zzflfVar : zza.zzc()) {
                if (((zzfni) this).zza.contains(zzflfVar.zzh())) {
                    zzflfVar.zzg().zzd(str, this.zzc);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfnj, android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        zzc(str);
        super.onPostExecute(str);
    }

    @Override // com.google.android.gms.internal.ads.zzfnj
    public final void zza(String str) {
        zzc(str);
        super.onPostExecute(str);
    }
}
