package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzegw {
    private final zzfdh zza;
    private final zzdpq zzb;
    private final zzdsd zzc;

    public zzegw(zzfdh zzfdhVar, zzdpq zzdpqVar, zzdsd zzdsdVar) {
        this.zza = zzfdhVar;
        this.zzb = zzdpqVar;
        this.zzc = zzdsdVar;
    }

    public final void zza(zzfbx zzfbxVar, zzfbu zzfbuVar, int i, @Nullable zzedj zzedjVar, long j) {
        zzdpp zzdppVar;
        zzdsc zza = this.zzc.zza();
        zza.zzd(zzfbxVar);
        zza.zzc(zzfbuVar);
        zza.zzb("action", "adapter_status");
        zza.zzb("adapter_l", String.valueOf(j));
        zza.zzb("sc", Integer.toString(i));
        if (zzedjVar != null) {
            zza.zzb("arec", Integer.toString(zzedjVar.zzb().zza));
            String zza2 = this.zza.zza(zzedjVar.getMessage());
            if (zza2 != null) {
                zza.zzb("areec", zza2);
            }
        }
        zzdpq zzdpqVar = this.zzb;
        Iterator it = zzfbuVar.zzt.iterator();
        while (true) {
            if (it.hasNext()) {
                zzdppVar = zzdpqVar.zza((String) it.next());
                if (zzdppVar != null) {
                    break;
                }
            } else {
                zzdppVar = null;
                break;
            }
        }
        if (zzdppVar != null) {
            zza.zzb("ancn", zzdppVar.zza);
            zzbrz zzbrzVar = zzdppVar.zzb;
            if (zzbrzVar != null) {
                zza.zzb("adapter_v", zzbrzVar.toString());
            }
            zzbrz zzbrzVar2 = zzdppVar.zzc;
            if (zzbrzVar2 != null) {
                zza.zzb("adapter_sv", zzbrzVar2.toString());
            }
        }
        zza.zzj();
    }
}
