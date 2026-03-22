package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbcn {
    private final List zza = new ArrayList();
    private final List zzb = new ArrayList();
    private final List zzc = new ArrayList();

    public final List zza() {
        ArrayList arrayList = new ArrayList();
        for (zzbcm zzbcmVar : this.zzb) {
            String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(zzbcw.zza());
        return arrayList;
    }

    public final List zzb() {
        List zza = zza();
        for (zzbcm zzbcmVar : this.zzc) {
            String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar);
            if (!TextUtils.isEmpty(str)) {
                zza.add(str);
            }
        }
        zza.addAll(zzbcw.zzb());
        return zza;
    }

    public final void zzc(zzbcm zzbcmVar) {
        this.zzb.add(zzbcmVar);
    }

    public final void zzd(zzbcm zzbcmVar) {
        this.zza.add(zzbcmVar);
    }

    public final void zze(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzbcm zzbcmVar : this.zza) {
            if (zzbcmVar.zze() == 1) {
                zzbcmVar.zzd(editor, zzbcmVar.zza(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Flag Json is null.");
        }
    }
}
