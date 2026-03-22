package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeif implements zzedh {
    private final zzejj zza;
    private final zzdpt zzb;

    public zzeif(zzejj zzejjVar, zzdpt zzdptVar) {
        this.zza = zzejjVar;
        this.zzb = zzdptVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedh
    @Nullable
    public final zzedi zza(String str, JSONObject jSONObject) throws zzfcw {
        zzbrk zzbrkVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbQ)).booleanValue()) {
            try {
                zzbrkVar = this.zzb.zzb(str);
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Coundn't create RTB adapter: ", e);
                zzbrkVar = null;
            }
        } else {
            zzbrkVar = this.zza.zza(str);
        }
        if (zzbrkVar == null) {
            return null;
        }
        return new zzedi(zzbrkVar, new zzeew(), str);
    }
}
