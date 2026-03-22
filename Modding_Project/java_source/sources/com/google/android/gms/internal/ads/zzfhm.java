package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfhm {
    public static void zza(ListenableFuture listenableFuture, zzfhn zzfhnVar, zzfhc zzfhcVar) {
        zzg(listenableFuture, zzfhnVar, zzfhcVar, false);
    }

    public static void zzb(ListenableFuture listenableFuture, zzfhn zzfhnVar, zzfhc zzfhcVar) {
        zzg(listenableFuture, zzfhnVar, zzfhcVar, true);
    }

    public static void zzc(ListenableFuture listenableFuture, zzfhn zzfhnVar, zzfhc zzfhcVar) {
        if (!((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            return;
        }
        zzgcy.zzr(zzgcp.zzw(listenableFuture), new zzfhl(zzfhnVar, zzfhcVar), zzcaa.zzg);
    }

    public static void zzd(ListenableFuture listenableFuture, zzfhc zzfhcVar) {
        if (!((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            return;
        }
        zzgcy.zzr(zzgcp.zzw(listenableFuture), new zzfhj(zzfhcVar), zzcaa.zzg);
    }

    public static boolean zze(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjc), str);
    }

    public static int zzf(zzfcp zzfcpVar) {
        int zzg = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzg(zzfcpVar) - 1;
        if (zzg != 0 && zzg != 1) {
            return 23;
        }
        return 7;
    }

    private static void zzg(ListenableFuture listenableFuture, zzfhn zzfhnVar, zzfhc zzfhcVar, boolean z) {
        if (!((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            return;
        }
        zzgcy.zzr(zzgcp.zzw(listenableFuture), new zzfhk(zzfhnVar, zzfhcVar, z), zzcaa.zzg);
    }
}
