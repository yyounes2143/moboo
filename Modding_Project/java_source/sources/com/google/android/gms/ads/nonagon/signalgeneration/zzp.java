package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbfa;
import com.google.android.gms.internal.ads.zzdsi;
import com.google.firebase.analytics.FirebaseAnalytics;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzp extends QueryInfoGenerationCallback {
    private final zzo zza;
    private final zzdsi zzb;
    private final boolean zzc;
    private final int zzd;
    private final long zze = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
    @Nullable
    private final Boolean zzf;

    public zzp(zzo zzoVar, boolean z, int i, @Nullable Boolean bool, zzdsi zzdsiVar) {
        this.zza = zzoVar;
        this.zzc = z;
        this.zzd = i;
        this.zzf = bool;
        this.zzb = zzdsiVar;
    }

    private static long zza() {
        return com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() + ((Long) zzbfa.zzh.zze()).longValue();
    }

    private final long zzb() {
        return com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zze;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        String str2;
        Pair pair = new Pair("sgf_reason", str);
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair(FirebaseAnalytics.Param.AD_FORMAT, AdFormat.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        Pair pair6 = new Pair("lat_ms", Long.toString(zzb()));
        int i = this.zzd;
        Pair pair7 = new Pair("sgpc_rn", Integer.toString(i));
        Pair pair8 = new Pair("sgpc_lsu", String.valueOf(this.zzf));
        boolean z = this.zzc;
        if (true != z) {
            str2 = "0";
        } else {
            str2 = "1";
        }
        zzaa.zzd(this.zzb, null, "sgpcf", pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, new Pair("tpc", str2));
        this.zza.zzf(z, new zzq(null, str, zza(), i));
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        String str;
        Pair pair = new Pair("se", "query_g");
        Pair pair2 = new Pair(FirebaseAnalytics.Param.AD_FORMAT, AdFormat.BANNER.name());
        Pair pair3 = new Pair("rtype", Integer.toString(6));
        Pair pair4 = new Pair("scar", "true");
        Pair pair5 = new Pair("lat_ms", Long.toString(zzb()));
        int i = this.zzd;
        Pair pair6 = new Pair("sgpc_rn", Integer.toString(i));
        Pair pair7 = new Pair("sgpc_lsu", String.valueOf(this.zzf));
        boolean z = this.zzc;
        if (true != z) {
            str = "0";
        } else {
            str = "1";
        }
        zzaa.zzd(this.zzb, null, "sgpcs", pair, pair2, pair3, pair4, pair5, pair6, pair7, new Pair("tpc", str));
        this.zza.zzf(z, new zzq(queryInfo, "", zza(), i));
    }
}
