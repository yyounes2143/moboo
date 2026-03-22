package com.google.android.gms.internal.ads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbjp implements zzbjw {
    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        String valueOf = String.valueOf((String) map.get(TypedValues.Custom.S_STRING));
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Received log message: ".concat(valueOf));
    }
}
