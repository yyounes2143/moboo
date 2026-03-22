package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzapu;
import com.google.android.gms.internal.ads.zzapx;
import com.google.android.gms.internal.ads.zzaqd;
import com.google.android.gms.internal.ads.zzaqi;
import com.google.android.gms.internal.ads.zzaqj;
import com.google.android.gms.internal.ads.zzaqq;
import com.google.android.gms.internal.ads.zzaqv;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzblt;
import com.google.android.gms.internal.ads.zzfqh;
import com.google.android.gms.internal.ads.zzfqi;
import java.io.File;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaz extends zzaqj {
    private final Context zzb;

    private zzaz(Context context, zzaqi zzaqiVar) {
        super(zzaqiVar);
        this.zzb = context;
    }

    public static zzapx zzb(Context context) {
        zzapx zzapxVar = new zzapx(new zzaqq(new File(zzfqi.zza(zzfqh.zza(), context.getCacheDir(), "admob_volley")), 20971520), new zzaz(context, new zzaqv(null, null)), 4);
        zzapxVar.zzd();
        return zzapxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqj, com.google.android.gms.internal.ads.zzapn
    public final zzapq zza(zzapu zzapuVar) throws zzaqd {
        if (zzapuVar.zza() == 0) {
            if (Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeH), zzapuVar.zzk())) {
                Context context = this.zzb;
                com.google.android.gms.ads.internal.client.zzbb.zzb();
                if (com.google.android.gms.ads.internal.util.client.zzf.zzt(context, 13400000)) {
                    zzapq zza = new zzblt(context).zza(zzapuVar);
                    if (zza != null) {
                        zze.zza("Got gmscore asset response: ".concat(String.valueOf(zzapuVar.zzk())));
                        return zza;
                    }
                    zze.zza("Failed to get gmscore asset response: ".concat(String.valueOf(zzapuVar.zzk())));
                }
            }
        }
        return super.zza(zzapuVar);
    }
}
