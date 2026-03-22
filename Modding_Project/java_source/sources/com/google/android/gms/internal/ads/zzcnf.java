package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcnf {
    private final String zza;
    private final zzbow zzb;
    private final Executor zzc;
    private zzcnk zzd;
    private final zzbjw zze = new zzcnc(this);
    private final zzbjw zzf = new zzcne(this);

    public zzcnf(String str, zzbow zzbowVar, Executor executor) {
        this.zza = str;
        this.zzb = zzbowVar;
        this.zzc = executor;
    }

    public static /* bridge */ /* synthetic */ boolean zzg(zzcnf zzcnfVar, Map map) {
        if (map != null) {
            String str = (String) map.get("hashCode");
            if (!TextUtils.isEmpty(str) && str.equals(zzcnfVar.zza)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void zzc(zzcnk zzcnkVar) {
        zzbow zzbowVar = this.zzb;
        zzbowVar.zzb("/updateActiveView", this.zze);
        zzbowVar.zzb("/untrackActiveViewUnit", this.zzf);
        this.zzd = zzcnkVar;
    }

    public final void zzd(zzcfb zzcfbVar) {
        zzcfbVar.zzag("/updateActiveView", this.zze);
        zzcfbVar.zzag("/untrackActiveViewUnit", this.zzf);
    }

    public final void zze() {
        zzbow zzbowVar = this.zzb;
        zzbowVar.zzc("/updateActiveView", this.zze);
        zzbowVar.zzc("/untrackActiveViewUnit", this.zzf);
    }

    public final void zzf(zzcfb zzcfbVar) {
        zzcfbVar.zzaz("/updateActiveView", this.zze);
        zzcfbVar.zzaz("/untrackActiveViewUnit", this.zzf);
    }
}
