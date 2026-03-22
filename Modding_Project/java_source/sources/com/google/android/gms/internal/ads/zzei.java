package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzei {
    @Nullable
    private static zzei zza;
    private final Executor zzb;
    private final CopyOnWriteArrayList zzc;
    private final Object zzd;
    @GuardedBy("lock")
    private int zze;
    @GuardedBy("lock")
    private boolean zzf;

    private zzei(final Context context) {
        Executor zza2 = zzdd.zza();
        this.zzb = zza2;
        this.zzc = new CopyOnWriteArrayList();
        this.zzd = new Object();
        this.zze = 0;
        zza2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeb
            @Override // java.lang.Runnable
            public final void run() {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.registerReceiver(new zzeg(zzei.this, null), intentFilter);
            }
        });
    }

    public static synchronized zzei zzb(Context context) {
        zzei zzeiVar;
        synchronized (zzei.class) {
            try {
                if (zza == null) {
                    zza = new zzei(context);
                }
                zzeiVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzeiVar;
    }

    public static /* synthetic */ void zzd(zzei zzeiVar, Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    i = 1;
                } else {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type != 1) {
                            if (type != 4 && type != 5) {
                                if (type != 6) {
                                    i = type != 9 ? 8 : 7;
                                }
                                i = 5;
                            }
                        }
                        i = 2;
                    }
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                            i = 3;
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            i = 4;
                            break;
                        case 13:
                            i = 5;
                            break;
                        case 16:
                        case 19:
                        default:
                            i = 6;
                            break;
                        case 18:
                            i = 2;
                            break;
                        case 20:
                            if (Build.VERSION.SDK_INT >= 29) {
                                i = 9;
                                break;
                            }
                            break;
                    }
                }
            } catch (SecurityException unused) {
            }
        }
        if (Build.VERSION.SDK_INT >= 31 && i == 5) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    zzec zzecVar = new zzec(zzeiVar);
                    telephonyManager.registerTelephonyCallback(zzeiVar.zzb, zzecVar);
                    telephonyManager.unregisterTelephonyCallback(zzecVar);
                    return;
                }
                throw null;
            } catch (RuntimeException unused2) {
                zzeiVar.zzh(5);
                return;
            }
        }
        zzeiVar.zzh(i);
    }

    private final void zzg() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.zzc;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzee zzeeVar = (zzee) it.next();
            if (zzeeVar.zzc()) {
                copyOnWriteArrayList.remove(zzeeVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh(int i) {
        zzg();
        synchronized (this.zzd) {
            try {
                if (this.zzf && this.zze == i) {
                    return;
                }
                this.zzf = true;
                this.zze = i;
                Iterator it = this.zzc.iterator();
                while (it.hasNext()) {
                    ((zzee) it.next()).zzb();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int zza() {
        int i;
        synchronized (this.zzd) {
            i = this.zze;
        }
        return i;
    }

    public final void zzf(zzzh zzzhVar, Executor executor) {
        boolean z;
        zzg();
        zzee zzeeVar = new zzee(this, zzzhVar, executor);
        synchronized (this.zzd) {
            this.zzc.add(zzeeVar);
            z = this.zzf;
        }
        if (z) {
            zzeeVar.zzb();
        }
    }
}
