package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdgp implements zzcra {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final zzhgk zzd;
    private final zzdiz zze;

    public zzdgp(Map map, Map map2, Map map3, zzhgk zzhgkVar, zzdiz zzdizVar) {
        this.zza = map;
        this.zzb = map2;
        this.zzc = map3;
        this.zzd = zzhgkVar;
        this.zze = zzdizVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcra
    @Nullable
    public final zzedf zza(int i, String str) {
        zzedf zza;
        zzedf zzedfVar = (zzedf) this.zza.get(str);
        if (zzedfVar != null) {
            return zzedfVar;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            zzefo zzefoVar = (zzefo) this.zzc.get(str);
            if (zzefoVar != null) {
                return new zzedg(zzefoVar, new zzfur() { // from class: com.google.android.gms.internal.ads.zzcrc
                    @Override // com.google.android.gms.internal.ads.zzfur
                    public final Object apply(Object obj) {
                        return new zzcrf((List) obj);
                    }
                });
            }
            zza = (zzedf) this.zzb.get(str);
            if (zza == null) {
                return null;
            }
        } else if (this.zze.zze() == null || (zza = ((zzcra) this.zzd.zzb()).zza(i, str)) == null) {
            return null;
        }
        return new zzedg(zza, new zzfur() { // from class: com.google.android.gms.internal.ads.zzcrd
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return new zzcrf((zzcqx) obj);
            }
        });
    }
}
