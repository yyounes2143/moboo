package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzarb {
    @NonNull
    public static zzapx zza(Context context, zzaqi zzaqiVar) {
        zzaqj zzaqjVar;
        if (zzaqiVar == null) {
            zzaqjVar = new zzaqj(new zzaqv(null, null));
        } else {
            zzaqjVar = new zzaqj(zzaqiVar);
        }
        zzapx zzapxVar = new zzapx(new zzaqq(new zzara(context.getApplicationContext()), 5242880), zzaqjVar, 4);
        zzapxVar.zzd();
        return zzapxVar;
    }
}
