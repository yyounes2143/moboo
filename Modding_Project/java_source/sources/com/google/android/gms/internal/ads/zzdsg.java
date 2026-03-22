package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdsg implements zzfgu {
    private final zzdrx zzb;
    private final Clock zzc;
    private final Map zza = new HashMap();
    private final Map zzd = new HashMap();

    public zzdsg(zzdrx zzdrxVar, Set set, Clock clock) {
        zzfgn zzfgnVar;
        this.zzb = zzdrxVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdsf zzdsfVar = (zzdsf) it.next();
            Map map = this.zzd;
            zzfgnVar = zzdsfVar.zzc;
            map.put(zzfgnVar, zzdsfVar);
        }
        this.zzc = clock;
    }

    private final void zze(zzfgn zzfgnVar, boolean z) {
        String str;
        zzfgn zzfgnVar2;
        String str2;
        zzdsf zzdsfVar = (zzdsf) this.zzd.get(zzfgnVar);
        if (zzdsfVar != null) {
            if (true != z) {
                str = "f.";
            } else {
                str = "s.";
            }
            Map map = this.zza;
            zzfgnVar2 = zzdsfVar.zzb;
            if (map.containsKey(zzfgnVar2)) {
                long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) map.get(zzfgnVar2)).longValue();
                Map zzb = this.zzb.zzb();
                str2 = zzdsfVar.zza;
                zzb.put("label.".concat(str2), str + elapsedRealtime);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzd(zzfgn zzfgnVar, String str) {
        Map map = this.zza;
        if (map.containsKey(zzfgnVar)) {
            zzdrx zzdrxVar = this.zzb;
            String valueOf = String.valueOf(str);
            zzdrxVar.zzb().put("task.".concat(valueOf), "s.".concat(String.valueOf(Long.toString(this.zzc.elapsedRealtime() - ((Long) map.get(zzfgnVar)).longValue()))));
        }
        if (this.zzd.containsKey(zzfgnVar)) {
            zze(zzfgnVar, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdF(zzfgn zzfgnVar, String str, Throwable th) {
        Map map = this.zza;
        if (map.containsKey(zzfgnVar)) {
            zzdrx zzdrxVar = this.zzb;
            String valueOf = String.valueOf(str);
            zzdrxVar.zzb().put("task.".concat(valueOf), "f.".concat(String.valueOf(Long.toString(this.zzc.elapsedRealtime() - ((Long) map.get(zzfgnVar)).longValue()))));
        }
        if (this.zzd.containsKey(zzfgnVar)) {
            zze(zzfgnVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdG(zzfgn zzfgnVar, String str) {
        this.zza.put(zzfgnVar, Long.valueOf(this.zzc.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdE(zzfgn zzfgnVar, String str) {
    }
}
