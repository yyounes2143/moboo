package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfp {
    public final zzfyc zza;
    public final zzfi zzb;
    @Nullable
    public final zzfk zzc;
    @Nullable
    public final zzfo zzd;

    public zzfp(zzfg zzfgVar, @Nullable List list, zzfi zzfiVar, @Nullable zzfk zzfkVar, @Nullable zzfo zzfoVar) {
        zzfyc zzn;
        if (list != null) {
            zzn = zzfyc.zzl(list);
        } else {
            zzn = zzfyc.zzn();
        }
        this.zza = zzn;
        this.zzb = zzfiVar;
        this.zzc = zzfkVar;
        this.zzd = zzfoVar;
    }
}
