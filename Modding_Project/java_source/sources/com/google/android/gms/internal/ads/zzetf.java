package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzetf implements zzetv {
    private final zzbyj zza;
    private final zzgdj zzb;
    private final Context zzc;

    public zzetf(zzbyj zzbyjVar, zzgdj zzgdjVar, Context context) {
        this.zza = zzbyjVar;
        this.zzb = zzgdjVar;
        this.zzc = context;
    }

    public static /* synthetic */ zzetg zzc(zzetf zzetfVar) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        zzbyj zzbyjVar = zzetfVar.zza;
        Context context = zzetfVar.zzc;
        if (!zzbyjVar.zzp(context)) {
            return new zzetg(null, null, null, null, null);
        }
        String zze = zzbyjVar.zze(context);
        if (zze == null) {
            str = "";
        } else {
            str = zze;
        }
        String zzc = zzbyjVar.zzc(context);
        if (zzc == null) {
            str2 = "";
        } else {
            str2 = zzc;
        }
        String zzb = zzbyjVar.zzb(context);
        if (zzb == null) {
            str3 = "";
        } else {
            str3 = zzb;
        }
        boolean zzp = zzbyjVar.zzp(context);
        Long l = null;
        if (true != zzp) {
            str4 = null;
        } else {
            str4 = "fa";
        }
        if ("TIME_OUT".equals(str2)) {
            l = (Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzax);
        }
        Long l2 = l;
        if (str4 == null) {
            str5 = "";
        } else {
            str5 = str4;
        }
        return new zzetg(str, str2, str3, str5, l2);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzete
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzetf.zzc(zzetf.this);
            }
        });
    }
}
