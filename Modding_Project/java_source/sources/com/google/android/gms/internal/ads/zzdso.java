package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdso {
    private final String zze;
    private final zzdsi zzf;
    @GuardedBy("this")
    private final List zzb = new ArrayList();
    @GuardedBy("this")
    private boolean zzc = false;
    @GuardedBy("this")
    private boolean zzd = false;
    private final com.google.android.gms.ads.internal.util.zzg zza = com.google.android.gms.ads.internal.zzv.zzp().zzi();

    public zzdso(String str, zzdsi zzdsiVar) {
        this.zze = str;
        this.zzf = zzdsiVar;
    }

    private final Map zzg() {
        String str;
        Map zza = this.zzf.zza();
        zza.put("tms", Long.toString(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime(), 10));
        if (this.zza.zzN()) {
            str = "";
        } else {
            str = this.zze;
        }
        zza.put(ScarConstants.TOKEN_ID_KEY, str);
        return zza;
    }

    public final synchronized void zza(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcl)).booleanValue()) {
            return;
        }
        Map zzg = zzg();
        zzg.put("action", "aaia");
        zzg.put("aair", "MalformedJson");
        this.zzb.add(zzg);
    }

    public final synchronized void zzb(String str, String str2) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcl)).booleanValue()) {
            return;
        }
        Map zzg = zzg();
        zzg.put("action", "adapter_init_finished");
        zzg.put("ancn", str);
        zzg.put("rqe", str2);
        this.zzb.add(zzg);
    }

    public final synchronized void zzc(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcl)).booleanValue()) {
            return;
        }
        Map zzg = zzg();
        zzg.put("action", "adapter_init_started");
        zzg.put("ancn", str);
        this.zzb.add(zzg);
    }

    public final synchronized void zzd(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcl)).booleanValue()) {
            return;
        }
        Map zzg = zzg();
        zzg.put("action", "adapter_init_finished");
        zzg.put("ancn", str);
        this.zzb.add(zzg);
    }

    public final synchronized void zze() {
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcl)).booleanValue() && !this.zzd) {
                Map zzg = zzg();
                zzg.put("action", "init_finished");
                List<Map> list = this.zzb;
                list.add(zzg);
                for (Map map : list) {
                    this.zzf.zzg(map);
                }
                this.zzd = true;
            }
        } finally {
        }
    }

    public final synchronized void zzf() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcl)).booleanValue() && !this.zzc) {
            Map zzg = zzg();
            zzg.put("action", "init_started");
            this.zzb.add(zzg);
            this.zzc = true;
        }
    }
}
