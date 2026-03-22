package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdds extends zzdbo implements zzayu {
    private final Map zzb;
    private final Context zzc;
    private final zzfbu zzd;

    public zzdds(Context context, Set set, zzfbu zzfbuVar) {
        super(set);
        this.zzb = new WeakHashMap(1);
        this.zzc = context;
        this.zzd = zzfbuVar;
    }

    public final synchronized void zza(View view) {
        try {
            Map map = this.zzb;
            zzayv zzayvVar = (zzayv) map.get(view);
            if (zzayvVar == null) {
                zzayv zzayvVar2 = new zzayv(this.zzc, view);
                zzayvVar2.zzd(this);
                map.put(view, zzayvVar2);
                zzayvVar = zzayvVar2;
            }
            if (this.zzd.zzX) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbB)).booleanValue()) {
                    zzayvVar.zzg(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbA)).longValue());
                    return;
                }
            }
            zzayvVar.zzf();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzb(View view) {
        Map map = this.zzb;
        if (map.containsKey(view)) {
            ((zzayv) map.get(view)).zze(this);
            map.remove(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final synchronized void zzdr(final zzayt zzaytVar) {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzddr
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((zzayu) obj).zzdr(zzayt.this);
            }
        });
    }
}
