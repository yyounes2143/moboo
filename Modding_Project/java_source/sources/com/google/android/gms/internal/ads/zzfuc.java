package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfuc {
    private final Context zzb;
    private final zzfud zzc;
    private boolean zzf;
    private final Intent zzg;
    @Nullable
    private ServiceConnection zzi;
    @Nullable
    private IInterface zzj;
    private final List zze = new ArrayList();
    private final String zzd = "OverlayDisplayService";
    private final zzfvu zza = zzfvy.zza(new zzfvu("OverlayDisplayService") { // from class: com.google.android.gms.internal.ads.zzftt
        public final /* synthetic */ String zza = "OverlayDisplayService";

        @Override // com.google.android.gms.internal.ads.zzfvu
        public final Object zza() {
            HandlerThread handlerThread = new HandlerThread(this.zza, 10);
            handlerThread.start();
            return new Handler(handlerThread.getLooper());
        }
    });
    private final IBinder.DeathRecipient zzh = new IBinder.DeathRecipient() { // from class: com.google.android.gms.internal.ads.zzftu
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            zzfuc.zzh(zzfuc.this);
        }
    };

    public zzfuc(Context context, zzfud zzfudVar, String str, Intent intent, zzfth zzfthVar) {
        this.zzb = context;
        this.zzc = zzfudVar;
        this.zzg = intent;
    }

    public static /* bridge */ /* synthetic */ IBinder.DeathRecipient zza(zzfuc zzfucVar) {
        return zzfucVar.zzh;
    }

    public static /* bridge */ /* synthetic */ IInterface zzb(zzfuc zzfucVar) {
        return zzfucVar.zzj;
    }

    public static /* bridge */ /* synthetic */ zzfud zzd(zzfuc zzfucVar) {
        return zzfucVar.zzc;
    }

    public static /* bridge */ /* synthetic */ List zze(zzfuc zzfucVar) {
        return zzfucVar.zze;
    }

    public static /* synthetic */ void zzf(zzfuc zzfucVar, Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            zzfucVar.zzc.zza("error caused by ", e);
        }
    }

    public static /* synthetic */ void zzg(zzfuc zzfucVar, Runnable runnable) {
        if (zzfucVar.zzj == null && !zzfucVar.zzf) {
            zzfucVar.zzc.zzc("Initiate binding to the service.", new Object[0]);
            List list = zzfucVar.zze;
            synchronized (list) {
                list.add(runnable);
            }
            zzfua zzfuaVar = new zzfua(zzfucVar, null);
            zzfucVar.zzi = zzfuaVar;
            zzfucVar.zzf = true;
            if (!zzfucVar.zzb.bindService(zzfucVar.zzg, zzfuaVar, 1)) {
                zzfucVar.zzc.zzc("Failed to bind to the service.", new Object[0]);
                zzfucVar.zzf = false;
                List list2 = zzfucVar.zze;
                synchronized (list2) {
                    list2.clear();
                }
            }
        } else if (zzfucVar.zzf) {
            zzfucVar.zzc.zzc("Waiting to bind to the service.", new Object[0]);
            List list3 = zzfucVar.zze;
            synchronized (list3) {
                list3.add(runnable);
            }
        } else {
            runnable.run();
        }
    }

    public static /* synthetic */ void zzh(zzfuc zzfucVar) {
        zzfucVar.zzc.zzc("%s : Binder has died.", zzfucVar.zzd);
        List list = zzfucVar.zze;
        synchronized (list) {
            list.clear();
        }
    }

    public static /* synthetic */ void zzi(zzfuc zzfucVar) {
        if (zzfucVar.zzj != null) {
            zzfucVar.zzc.zzc("Unbind from service.", new Object[0]);
            Context context = zzfucVar.zzb;
            ServiceConnection serviceConnection = zzfucVar.zzi;
            serviceConnection.getClass();
            context.unbindService(serviceConnection);
            zzfucVar.zzf = false;
            zzfucVar.zzj = null;
            zzfucVar.zzi = null;
            List list = zzfucVar.zze;
            synchronized (list) {
                list.clear();
            }
        }
    }

    public static /* bridge */ /* synthetic */ void zzj(zzfuc zzfucVar, boolean z) {
        zzfucVar.zzf = false;
    }

    public static /* bridge */ /* synthetic */ void zzk(zzfuc zzfucVar, IInterface iInterface) {
        zzfucVar.zzj = iInterface;
    }

    public final void zzo(final Runnable runnable) {
        ((Handler) this.zza.zza()).post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzftv
            @Override // java.lang.Runnable
            public final void run() {
                zzfuc.zzf(zzfuc.this, runnable);
            }
        });
    }

    @Nullable
    public final IInterface zzc() {
        return this.zzj;
    }

    public final void zzm(final Runnable runnable) {
        zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzftw
            @Override // java.lang.Runnable
            public final void run() {
                zzfuc.zzg(zzfuc.this, runnable);
            }
        });
    }

    public final void zzn() {
        zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzftx
            @Override // java.lang.Runnable
            public final void run() {
                zzfuc.zzi(zzfuc.this);
            }
        });
    }
}
