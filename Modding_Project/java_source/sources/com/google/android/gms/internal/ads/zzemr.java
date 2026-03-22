package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzemr implements zzetv {
    private final zzgdj zza;
    private final zzdpt zzb;
    private final zzduh zzc;
    private final zzemt zzd;

    public zzemr(zzgdj zzgdjVar, zzdpt zzdptVar, zzduh zzduhVar, zzemt zzemtVar) {
        this.zza = zzgdjVar;
        this.zzb = zzdptVar;
        this.zzc = zzduhVar;
        this.zzd = zzemtVar;
    }

    public static /* synthetic */ zzems zzc(zzemr zzemrVar) {
        List<String> asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbD)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                zzfdn zzc = zzemrVar.zzb.zzc(str, new JSONObject());
                zzc.zzC();
                boolean zzt = zzemrVar.zzc.zzt();
                Bundle bundle2 = new Bundle();
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlT)).booleanValue() || zzt) {
                    try {
                        zzbrz zzf = zzc.zzf();
                        if (zzf != null) {
                            bundle2.putString("sdk_version", zzf.toString());
                        }
                    } catch (zzfcw unused) {
                    }
                }
                try {
                    zzbrz zze = zzc.zze();
                    if (zze != null) {
                        bundle2.putString("adapter_version", zze.toString());
                    }
                } catch (zzfcw unused2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (zzfcw unused3) {
            }
        }
        zzems zzemsVar = new zzems(bundle);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlT)).booleanValue()) {
            zzemrVar.zzd.zzb(zzemsVar);
        }
        return zzemsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        zzbcm zzbcmVar = zzbcv.zzlT;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzemt zzemtVar = this.zzd;
            if (zzemtVar.zza() != null) {
                zzems zza = zzemtVar.zza();
                zza.getClass();
                return zzgcy.zzh(zza);
            }
        }
        if (!zzfvt.zzd((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbD)) && (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue() || (!this.zzd.zzd() && this.zzc.zzt()))) {
            this.zzd.zzc(true);
            return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzemq
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzemr.zzc(zzemr.this);
                }
            });
        }
        return zzgcy.zzh(new zzems(new Bundle()));
    }
}
