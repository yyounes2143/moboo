package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzclt implements zzcld {
    private final Context zza;
    private final com.google.android.gms.ads.internal.util.zzg zzb = com.google.android.gms.ads.internal.zzv.zzp().zzi();

    public zzclt(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcld
    public final void zza(Map map) {
        String str;
        if (!map.isEmpty() && (str = (String) map.get("gad_idless")) != null) {
            com.google.android.gms.ads.internal.util.zzg zzgVar = this.zzb;
            boolean parseBoolean = Boolean.parseBoolean(str);
            zzgVar.zzD(parseBoolean);
            if (parseBoolean) {
                com.google.android.gms.ads.internal.util.zzad.zzc(this.zza);
            }
        }
    }
}
