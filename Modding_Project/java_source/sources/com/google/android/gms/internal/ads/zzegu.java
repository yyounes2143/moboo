package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzegu {
    private final Clock zza;
    private final zzegw zzb;
    private final zzfjr zzc;
    @GuardedBy("this")
    private final LinkedHashMap zzd = new LinkedHashMap();
    private final boolean zze = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgX)).booleanValue();
    private final zzedk zzf;
    private boolean zzg;
    private long zzh;
    private long zzi;

    public zzegu(Clock clock, zzegw zzegwVar, zzedk zzedkVar, zzfjr zzfjrVar) {
        this.zza = clock;
        this.zzb = zzegwVar;
        this.zzf = zzedkVar;
        this.zzc = zzfjrVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean zzq(zzfbu zzfbuVar) {
        zzegt zzegtVar = (zzegt) this.zzd.get(zzfbuVar);
        if (zzegtVar == null) {
            return false;
        }
        if (zzegtVar.zzc != 8) {
            return false;
        }
        return true;
    }

    public final synchronized long zza() {
        return this.zzh;
    }

    public final synchronized ListenableFuture zzf(zzfcg zzfcgVar, zzfbu zzfbuVar, ListenableFuture listenableFuture, zzfjn zzfjnVar) {
        zzfbx zzfbxVar = zzfcgVar.zzb.zzb;
        long elapsedRealtime = this.zza.elapsedRealtime();
        String str = zzfbuVar.zzw;
        if (str != null) {
            this.zzd.put(zzfbuVar, new zzegt(str, zzfbuVar.zzaf, 9, 0L, null));
            zzgcy.zzr(listenableFuture, new zzegs(this, elapsedRealtime, zzfbxVar, zzfbuVar, str, zzfjnVar, zzfcgVar), zzcaa.zzg);
        }
        return listenableFuture;
    }

    public final synchronized String zzg() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (Map.Entry entry : this.zzd.entrySet()) {
                zzegt zzegtVar = (zzegt) entry.getValue();
                if (zzegtVar.zzc != Integer.MAX_VALUE) {
                    arrayList.add(zzegtVar.toString());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return TextUtils.join("_", arrayList);
    }

    public final synchronized void zzi(@Nullable zzfbu zzfbuVar) {
        try {
            this.zzh = this.zza.elapsedRealtime() - this.zzi;
            if (zzfbuVar != null) {
                this.zzf.zze(zzfbuVar);
            }
            this.zzg = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzj() {
        this.zzh = this.zza.elapsedRealtime() - this.zzi;
    }

    public final synchronized void zzk(List list) {
        this.zzi = this.zza.elapsedRealtime();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzfbu zzfbuVar = (zzfbu) it.next();
            String str = zzfbuVar.zzw;
            if (!TextUtils.isEmpty(str)) {
                this.zzd.put(zzfbuVar, new zzegt(str, zzfbuVar.zzaf, Integer.MAX_VALUE, 0L, null));
            }
        }
    }

    public final synchronized void zzl() {
        this.zzi = this.zza.elapsedRealtime();
    }

    public final synchronized void zzm(zzfbu zzfbuVar) {
        zzegt zzegtVar = (zzegt) this.zzd.get(zzfbuVar);
        if (zzegtVar != null && !this.zzg) {
            zzegtVar.zzc = 8;
        }
    }
}
