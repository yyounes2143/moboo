package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdux {
    private final zzduh zza;
    private final zzdpq zzb;
    private final Object zzc = new Object();
    @GuardedBy("lock")
    private final List zzd = new ArrayList();
    @GuardedBy("lock")
    private boolean zze;

    public zzdux(zzduh zzduhVar, zzdpq zzdpqVar) {
        this.zza = zzduhVar;
        this.zzb = zzdpqVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(List list) {
        String str;
        boolean z;
        zzdpp zza;
        zzbrz zzbrzVar;
        synchronized (this.zzc) {
            try {
                if (this.zze) {
                    return;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    zzblu zzbluVar = (zzblu) it.next();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjE)).booleanValue()) {
                        zzdpp zza2 = this.zzb.zza(zzbluVar.zza);
                        if (zza2 != null && (zzbrzVar = zza2.zzc) != null) {
                            str = zzbrzVar.toString();
                        }
                        str = "";
                    } else {
                        str = "";
                    }
                    String str2 = str;
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjF)).booleanValue() || (zza = this.zzb.zza(zzbluVar.zza)) == null || !zza.zzd) {
                        z = false;
                    } else {
                        z = true;
                    }
                    List list2 = this.zzd;
                    String str3 = zzbluVar.zza;
                    list2.add(new zzduw(str3, str2, this.zzb.zzb(str3), zzbluVar.zzb ? 1 : 0, zzbluVar.zzd, zzbluVar.zzc, z));
                }
                this.zze = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final JSONArray zza() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.zzc) {
            try {
                if (!this.zze) {
                    zzduh zzduhVar = this.zza;
                    if (zzduhVar.zzt()) {
                        zzd(zzduhVar.zzg());
                    } else {
                        zzc();
                        return jSONArray;
                    }
                }
                for (zzduw zzduwVar : this.zzd) {
                    jSONArray.put(zzduwVar.zza());
                }
                return jSONArray;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc() {
        this.zza.zzs(new zzduv(this));
    }
}
