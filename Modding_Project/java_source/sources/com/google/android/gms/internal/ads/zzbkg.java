package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbkg implements com.google.android.gms.ads.internal.overlay.zzaa {
    boolean zza = false;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ com.google.android.gms.ads.internal.client.zza zzc;
    final /* synthetic */ Map zzd;
    final /* synthetic */ Map zze;

    public zzbkg(zzbki zzbkiVar, boolean z, com.google.android.gms.ads.internal.client.zza zzaVar, Map map, Map map2) {
        this.zzb = z;
        this.zzc = zzaVar;
        this.zzd = map;
        this.zze = map2;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zza(boolean z) {
        if (!this.zza) {
            if (z && this.zzb) {
                ((zzddy) this.zzc).zzdf();
            }
            this.zza = true;
            Map map = this.zzd;
            map.put((String) this.zze.get("event_id"), Boolean.valueOf(z));
            ((zzbmr) this.zzc).zzd("openIntentAsync", map);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zzb(int i) {
    }
}
