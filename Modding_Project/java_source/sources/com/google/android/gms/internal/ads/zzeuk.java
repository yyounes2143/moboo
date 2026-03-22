package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeuk implements zzetv {
    private final zzgdj zza;
    private final Context zzb;

    public zzeuk(zzgdj zzgdjVar, Context context) {
        this.zza = zzgdjVar;
        this.zzb = context;
    }

    public static /* synthetic */ zzeui zzc(zzeuk zzeukVar) {
        boolean z;
        int i;
        Context context = zzeukVar.zzb;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        int phoneType = telephonyManager.getPhoneType();
        com.google.android.gms.ads.internal.zzv.zzr();
        int i2 = -1;
        if (com.google.android.gms.ads.internal.util.zzs.zzB(context, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                int ordinal = activeNetworkInfo.getDetailedState().ordinal();
                i = type;
                i2 = ordinal;
            } else {
                i = -1;
            }
            z = connectivityManager.isActiveNetworkMetered();
        } else {
            z = false;
            i = -2;
        }
        return new zzeui(networkOperator, i, com.google.android.gms.ads.internal.zzv.zzs().zzm(context), phoneType, z, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 39;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeuk.zzc(zzeuk.this);
            }
        });
    }
}
