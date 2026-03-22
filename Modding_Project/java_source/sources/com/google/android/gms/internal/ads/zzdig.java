package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdig implements zzayu {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdij zzb;

    public zzdig(zzdij zzdijVar, String str) {
        this.zza = str;
        this.zzb = zzdijVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzdr(zzayt zzaytVar) {
        zzdkm zzdkmVar;
        Map map;
        zzdkm zzdkmVar2;
        zzdkm zzdkmVar3;
        zzdkm zzdkmVar4;
        zzdkm zzdkmVar5;
        zzdkm zzdkmVar6;
        Map map2;
        zzdkm zzdkmVar7;
        zzdkm zzdkmVar8;
        zzdkm zzdkmVar9;
        zzdkm zzdkmVar10;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbV)).booleanValue()) {
            synchronized (this) {
                try {
                    if (zzaytVar.zzj) {
                        zzdij zzdijVar = this.zzb;
                        zzdkmVar6 = zzdijVar.zzo;
                        if (zzdkmVar6 != null) {
                            map2 = zzdijVar.zzz;
                            map2.put(this.zza, Boolean.TRUE);
                            zzdkmVar7 = zzdijVar.zzo;
                            if (zzdkmVar7 != null) {
                                zzdkmVar8 = zzdijVar.zzo;
                                View zzf = zzdkmVar8.zzf();
                                zzdkmVar9 = zzdijVar.zzo;
                                Map zzl = zzdkmVar9.zzl();
                                zzdkmVar10 = zzdijVar.zzo;
                                zzdijVar.zzB(zzf, zzl, zzdkmVar10.zzm(), true);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (zzaytVar.zzj) {
            zzdij zzdijVar2 = this.zzb;
            zzdkmVar = zzdijVar2.zzo;
            if (zzdkmVar != null) {
                map = zzdijVar2.zzz;
                map.put(this.zza, Boolean.TRUE);
                zzdkmVar2 = zzdijVar2.zzo;
                if (zzdkmVar2 != null) {
                    zzdkmVar3 = zzdijVar2.zzo;
                    View zzf2 = zzdkmVar3.zzf();
                    zzdkmVar4 = zzdijVar2.zzo;
                    Map zzl2 = zzdkmVar4.zzl();
                    zzdkmVar5 = zzdijVar2.zzo;
                    zzdijVar2.zzB(zzf2, zzl2, zzdkmVar5.zzm(), true);
                }
            }
        }
    }
}
