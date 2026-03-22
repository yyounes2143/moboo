package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzawi implements zzfpu {
    private final zzfnz zza;
    private final zzfoo zzb;
    private final zzawv zzc;
    private final zzawh zzd;
    private final zzavr zze;
    private final zzawx zzf;
    private final zzawp zzg;
    private final zzawg zzh;

    public zzawi(@NonNull zzfnz zzfnzVar, @NonNull zzfoo zzfooVar, @NonNull zzawv zzawvVar, @NonNull zzawh zzawhVar, @Nullable zzavr zzavrVar, @Nullable zzawx zzawxVar, @Nullable zzawp zzawpVar, @Nullable zzawg zzawgVar) {
        this.zza = zzfnzVar;
        this.zzb = zzfooVar;
        this.zzc = zzawvVar;
        this.zzd = zzawhVar;
        this.zze = zzavrVar;
        this.zzf = zzawxVar;
        this.zzg = zzawpVar;
        this.zzh = zzawgVar;
    }

    private final Map zze() {
        HashMap hashMap = new HashMap();
        zzfnz zzfnzVar = this.zza;
        zzath zzb = this.zzb.zzb();
        hashMap.put("v", zzfnzVar.zzd());
        hashMap.put("gms", Boolean.valueOf(zzfnzVar.zzg()));
        hashMap.put("int", zzb.zzg());
        hashMap.put("attts", Long.valueOf(zzb.zzf().zza()));
        hashMap.put("att", zzb.zzf().zzd());
        hashMap.put("attkid", zzb.zzf().zzf());
        hashMap.put("up", Boolean.valueOf(this.zzd.zza()));
        hashMap.put("t", new Throwable());
        zzawp zzawpVar = this.zzg;
        if (zzawpVar != null) {
            hashMap.put("tcq", Long.valueOf(zzawpVar.zzc()));
            hashMap.put("tpq", Long.valueOf(zzawpVar.zzg()));
            hashMap.put("tcv", Long.valueOf(zzawpVar.zzd()));
            hashMap.put("tpv", Long.valueOf(zzawpVar.zzh()));
            hashMap.put("tchv", Long.valueOf(zzawpVar.zzb()));
            hashMap.put("tphv", Long.valueOf(zzawpVar.zzf()));
            hashMap.put("tcc", Long.valueOf(zzawpVar.zza()));
            hashMap.put("tpc", Long.valueOf(zzawpVar.zze()));
            zzavr zzavrVar = this.zze;
            if (zzavrVar != null) {
                hashMap.put("nt", Long.valueOf(zzavrVar.zza()));
            }
            zzawx zzawxVar = this.zzf;
            if (zzawxVar != null) {
                hashMap.put("vs", Long.valueOf(zzawxVar.zzc()));
                hashMap.put("vf", Long.valueOf(zzawxVar.zzb()));
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzfpu
    public final Map zza() {
        zzawv zzawvVar = this.zzc;
        Map zze = zze();
        zze.put("lts", Long.valueOf(zzawvVar.zza()));
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfpu
    public final Map zzb() {
        return zze();
    }

    @Override // com.google.android.gms.internal.ads.zzfpu
    public final Map zzc() {
        zzawg zzawgVar = this.zzh;
        Map zze = zze();
        if (zzawgVar != null) {
            zze.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_VST, zzawgVar.zza());
        }
        return zze;
    }

    public final void zzd(View view) {
        this.zzc.zzd(view);
    }
}
