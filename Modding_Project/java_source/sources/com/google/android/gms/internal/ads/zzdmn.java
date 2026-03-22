package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdmn {
    private final Executor zza;
    private final zzcnu zzb;
    private final zzdds zzc;
    private final zzcmn zzd;

    public zzdmn(Executor executor, zzcnu zzcnuVar, zzdds zzddsVar, zzcmn zzcmnVar) {
        this.zza = executor;
        this.zzc = zzddsVar;
        this.zzb = zzcnuVar;
        this.zzd = zzcmnVar;
    }

    public final void zzc(final zzcfb zzcfbVar) {
        if (zzcfbVar == null) {
            return;
        }
        zzdds zzddsVar = this.zzc;
        zzddsVar.zza(zzcfbVar.zzF());
        zzayu zzayuVar = new zzayu() { // from class: com.google.android.gms.internal.ads.zzdmj
            @Override // com.google.android.gms.internal.ads.zzayu
            public final void zzdr(zzayt zzaytVar) {
                zzcgt zzN = zzcfb.this.zzN();
                Rect rect = zzaytVar.zzd;
                zzN.zzr(rect.left, rect.top, false);
            }
        };
        Executor executor = this.zza;
        zzddsVar.zzo(zzayuVar, executor);
        zzddsVar.zzo(new zzayu() { // from class: com.google.android.gms.internal.ads.zzdmk
            @Override // com.google.android.gms.internal.ads.zzayu
            public final void zzdr(zzayt zzaytVar) {
                String str;
                HashMap hashMap = new HashMap();
                if (true != zzaytVar.zzj) {
                    str = "0";
                } else {
                    str = "1";
                }
                hashMap.put("isVisible", str);
                zzcfb.this.zzd("onAdVisibilityChanged", hashMap);
            }
        }, executor);
        zzcnu zzcnuVar = this.zzb;
        zzddsVar.zzo(zzcnuVar, executor);
        zzcnuVar.zzf(zzcfbVar);
        zzcgt zzN = zzcfbVar.zzN();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzku)).booleanValue() && zzN != null) {
            zzcmn zzcmnVar = this.zzd;
            zzN.zzN(zzcmnVar);
            zzN.zzO(zzcmnVar, null, null);
        }
        zzcfbVar.zzag("/trackActiveViewUnit", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdml
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzcfb zzcfbVar2 = (zzcfb) obj;
                zzdmn.this.zzb.zzd();
            }
        });
        zzcfbVar.zzag("/untrackActiveViewUnit", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdmm
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzcfb zzcfbVar2 = (zzcfb) obj;
                zzdmn.this.zzb.zzb();
            }
        });
    }
}
