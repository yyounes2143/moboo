package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeoe implements zzetv {
    private final zzgdj zza;
    private final Context zzb;

    public zzeoe(zzgdj zzgdjVar, Context context) {
        this.zza = zzgdjVar;
        this.zzb = context;
    }

    public static /* synthetic */ zzeof zzc(zzeoe zzeoeVar) {
        boolean z;
        double d = -1.0d;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmn)).booleanValue()) {
            BatteryManager batteryManager = (BatteryManager) zzeoeVar.zzb.getSystemService("batterymanager");
            if (batteryManager != null) {
                d = batteryManager.getIntProperty(4) / 100.0d;
            }
            if (batteryManager != null) {
                z = batteryManager.isCharging();
            } else {
                z = zze(zzeoeVar.zzd());
            }
        } else {
            Intent zzd = zzeoeVar.zzd();
            boolean zze = zze(zzd);
            if (zzd != null) {
                d = zzd.getIntExtra("level", -1) / zzd.getIntExtra("scale", -1);
            }
            z = zze;
        }
        return new zzeof(d, z);
    }

    @SuppressLint({"UnprotectedReceiver"})
    private final Intent zzd() {
        Intent registerReceiver;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzln)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            registerReceiver = this.zzb.registerReceiver(null, intentFilter, 4);
            return registerReceiver;
        }
        return this.zzb.registerReceiver(null, intentFilter);
    }

    private static final boolean zze(Intent intent) {
        if (intent == null) {
            return false;
        }
        int intExtra = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        if (intExtra != 2 && intExtra != 5) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    @SuppressLint({"UnprotectedReceiver"})
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeod
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeoe.zzc(zzeoe.this);
            }
        });
    }
}
