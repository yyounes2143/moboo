package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzety {
    private final Context zza;
    private final Set zzb;
    private final Executor zzc;
    private final zzfhn zzd;
    private final zzdsd zze;
    private long zzf = 0;
    @GuardedBy("this")
    private int zzg = 0;

    public zzety(Context context, Executor executor, Set set, zzfhn zzfhnVar, zzdsd zzdsdVar) {
        this.zza = context;
        this.zzc = executor;
        this.zzb = set;
        this.zzd = zzfhnVar;
        this.zze = zzdsdVar;
    }

    public static /* synthetic */ void zzb(zzety zzetyVar, long j, zzetv zzetvVar, Bundle bundle) {
        long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - j;
        if (((Boolean) zzbex.zza.zze()).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zza("Signal runtime (ms) : " + zzfvt.zzc(zzetvVar.getClass().getCanonicalName()) + " = " + elapsedRealtime);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcw)).booleanValue()) {
                synchronized (zzetyVar) {
                    bundle.putLong("sig" + zzetvVar.zza(), elapsedRealtime);
                }
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzco)).booleanValue()) {
            return;
        }
        zzdsc zza = zzetyVar.zze.zza();
        zza.zzb("action", "lat_ms");
        zza.zzb("lat_grp", "sig_lat_grp");
        zza.zzb("lat_id", String.valueOf(zzetvVar.zza()));
        zza.zzb("clat_ms", String.valueOf(elapsedRealtime));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcp)).booleanValue()) {
            synchronized (zzetyVar) {
                zzetyVar.zzg++;
            }
            zza.zzb("seq_num", com.google.android.gms.ads.internal.zzv.zzp().zzh().zzd());
            synchronized (zzetyVar) {
                try {
                    if (zzetyVar.zzg == zzetyVar.zzb.size() && zzetyVar.zzf != 0) {
                        zzetyVar.zzg = 0;
                        String valueOf = String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - zzetyVar.zzf);
                        if (zzetvVar.zza() > 39 && zzetvVar.zza() < 52) {
                            zza.zzb("lat_gmssg", valueOf);
                        } else {
                            zza.zzb("lat_clsg", valueOf);
                        }
                    }
                } finally {
                }
            }
        }
        zza.zzk();
    }

    public final ListenableFuture zza(final Object obj, @Nullable final Bundle bundle, final boolean z) {
        zzfhc zza = zzfhb.zza(this.zza, 8);
        zza.zzi();
        Set<zzetv> set = this.zzb;
        final ArrayList arrayList = new ArrayList(set.size());
        List arrayList2 = new ArrayList();
        zzbcm zzbcmVar = zzbcv.zzlY;
        if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).isEmpty()) {
            arrayList2 = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).split(","));
        }
        this.zzf = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
        final Bundle bundle2 = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue() && bundle != null) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            if (obj instanceof zzcuv) {
                bundle.putLong(zzdrl.CLIENT_SIGNALS_START.zza(), currentTimeMillis);
            } else {
                bundle.putLong(zzdrl.GMS_SIGNALS_START.zza(), currentTimeMillis);
            }
        }
        for (final zzetv zzetvVar : set) {
            if (!arrayList2.contains(String.valueOf(zzetvVar.zza()))) {
                final long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
                ListenableFuture zzb = zzetvVar.zzb();
                final Bundle bundle3 = bundle2;
                zzb.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzetw
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzety.zzb(zzety.this, elapsedRealtime, zzetvVar, bundle3);
                    }
                }, zzcaa.zzg);
                arrayList.add(zzb);
                bundle2 = bundle3;
            }
        }
        ListenableFuture zza2 = zzgcy.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzetx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object obj2;
                Bundle bundle4;
                Iterator it = arrayList.iterator();
                while (true) {
                    obj2 = obj;
                    if (!it.hasNext()) {
                        break;
                    }
                    zzetu zzetuVar = (zzetu) ((ListenableFuture) it.next()).get();
                    if (zzetuVar != null) {
                        boolean z2 = z;
                        zzetuVar.zzb(obj2);
                        if (z2) {
                            zzetuVar.zza(obj2);
                        }
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue() && (bundle4 = bundle) != null) {
                    Bundle bundle5 = bundle2;
                    long currentTimeMillis2 = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
                    if (obj2 instanceof zzcuv) {
                        bundle4.putLong(zzdrl.CLIENT_SIGNALS_END.zza(), currentTimeMillis2);
                        bundle4.putBundle("client_sig_latency_key", bundle5);
                        return obj2;
                    }
                    bundle4.putLong(zzdrl.GMS_SIGNALS_END.zza(), currentTimeMillis2);
                    bundle4.putBundle("gms_sig_latency_key", bundle5);
                }
                return obj2;
            }
        }, this.zzc);
        if (zzfhq.zza()) {
            zzfhm.zza(zza2, this.zzd, zza);
        }
        return zza2;
    }
}
