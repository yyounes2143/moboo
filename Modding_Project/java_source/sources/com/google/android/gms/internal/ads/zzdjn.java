package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdjn implements zzbfu {
    final /* synthetic */ zzdkm zza;
    final /* synthetic */ ViewGroup zzb;

    public zzdjn(zzdkm zzdkmVar, ViewGroup viewGroup) {
        this.zza = zzdkmVar;
        this.zzb = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final JSONObject zza() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final JSONObject zzb() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void zzc() {
        zzfyc zzfycVar = zzdjk.zza;
        zzdkm zzdkmVar = this.zza;
        Map zzm = zzdkmVar.zzm();
        if (zzm != null) {
            int size = zzfycVar.size();
            int i = 0;
            while (i < size) {
                Object obj = zzm.get((String) zzfycVar.get(i));
                i++;
                if (obj != null) {
                    zzdkmVar.onClick(this.zzb);
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void zzd(MotionEvent motionEvent) {
        this.zza.onTouch(null, motionEvent);
    }
}
