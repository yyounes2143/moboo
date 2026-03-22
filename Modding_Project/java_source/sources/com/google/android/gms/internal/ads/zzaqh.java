package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaqh implements zzapt {
    private final Map zza = new HashMap();
    @Nullable
    private final zzapg zzb;
    @Nullable
    private final BlockingQueue zzc;
    private final zzapl zzd;

    public zzaqh(@NonNull zzapg zzapgVar, @NonNull BlockingQueue blockingQueue, zzapl zzaplVar) {
        this.zzd = zzaplVar;
        this.zzb = zzapgVar;
        this.zzc = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzapt
    public final synchronized void zza(zzapu zzapuVar) {
        try {
            Map map = this.zza;
            String zzj = zzapuVar.zzj();
            List list = (List) map.remove(zzj);
            if (list != null && !list.isEmpty()) {
                if (zzaqg.zzb) {
                    zzaqg.zzd("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), zzj);
                }
                zzapu zzapuVar2 = (zzapu) list.remove(0);
                map.put(zzj, list);
                zzapuVar2.zzu(this);
                try {
                    this.zzc.put(zzapuVar2);
                } catch (InterruptedException e) {
                    zzaqg.zzb("Couldn't add request to queue. %s", e.toString());
                    Thread.currentThread().interrupt();
                    this.zzb.zzb();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapt
    public final void zzb(zzapu zzapuVar, zzaqa zzaqaVar) {
        List<zzapu> list;
        zzapd zzapdVar = zzaqaVar.zzb;
        if (zzapdVar != null && !zzapdVar.zza(System.currentTimeMillis())) {
            String zzj = zzapuVar.zzj();
            synchronized (this) {
                list = (List) this.zza.remove(zzj);
            }
            if (list != null) {
                if (zzaqg.zzb) {
                    zzaqg.zzd("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), zzj);
                }
                for (zzapu zzapuVar2 : list) {
                    this.zzd.zzb(zzapuVar2, zzaqaVar, null);
                }
                return;
            }
            return;
        }
        zza(zzapuVar);
    }

    public final synchronized boolean zzc(zzapu zzapuVar) {
        try {
            Map map = this.zza;
            String zzj = zzapuVar.zzj();
            if (map.containsKey(zzj)) {
                List list = (List) map.get(zzj);
                if (list == null) {
                    list = new ArrayList();
                }
                zzapuVar.zzm("waiting-for-response");
                list.add(zzapuVar);
                map.put(zzj, list);
                if (zzaqg.zzb) {
                    zzaqg.zza("Request for cacheKey=%s is in flight, putting on hold.", zzj);
                }
                return true;
            }
            map.put(zzj, null);
            zzapuVar.zzu(this);
            if (zzaqg.zzb) {
                zzaqg.zza("new request, sending to network %s", zzj);
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }
}
