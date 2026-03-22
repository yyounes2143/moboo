package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzarm;
import com.google.android.gms.internal.ads.zzaro;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzavd;
import com.google.android.gms.internal.ads.zzavg;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzavk;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzcaa;
import com.google.android.gms.internal.ads.zzfnx;
import com.google.android.gms.internal.ads.zzfox;
import com.google.android.gms.internal.ads.zzfpr;
import com.google.android.gms.internal.ads.zzgcy;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzk implements Runnable, zzavg {
    private static final long zzc = System.currentTimeMillis();
    @VisibleForTesting
    protected boolean zza;
    private final boolean zzg;
    private final boolean zzh;
    private final Executor zzi;
    private final zzfnx zzj;
    private Context zzk;
    private final Context zzl;
    private VersionInfoParcel zzm;
    private final VersionInfoParcel zzn;
    private final boolean zzo;
    private int zzp;
    private final List zzd = new Vector();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    final CountDownLatch zzb = new CountDownLatch(1);

    public zzk(Context context, VersionInfoParcel versionInfoParcel) {
        this.zzk = context;
        this.zzl = context;
        this.zzm = versionInfoParcel;
        this.zzn = versionInfoParcel;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.zzi = newCachedThreadPool;
        boolean booleanValue = ((Boolean) zzbd.zzc().zzb(zzbcv.zzcH)).booleanValue();
        this.zzo = booleanValue;
        this.zzj = zzfnx.zza(context, newCachedThreadPool, booleanValue);
        this.zzg = ((Boolean) zzbd.zzc().zzb(zzbcv.zzcE)).booleanValue();
        this.zzh = ((Boolean) zzbd.zzc().zzb(zzbcv.zzcI)).booleanValue();
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzcG)).booleanValue()) {
            this.zzp = 2;
        } else {
            this.zzp = 1;
        }
        if (!((Boolean) zzbd.zzc().zzb(zzbcv.zzdK)).booleanValue()) {
            this.zza = zzi();
        }
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzdE)).booleanValue()) {
            zzcaa.zza.execute(this);
            return;
        }
        zzbb.zzb();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzv()) {
            zzcaa.zza.execute(this);
        } else {
            run();
        }
    }

    public static /* synthetic */ void zzc(zzk zzkVar, boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzu(zzkVar.zzl, zzkVar.zzn, z, zzkVar.zzo).zzp();
        } catch (NullPointerException e) {
            zzkVar.zzj.zzc(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }

    @Nullable
    private final zzavg zzq() {
        if (zzm() == 2) {
            return (zzavg) this.zzf.get();
        }
        return (zzavg) this.zze.get();
    }

    private final void zzr() {
        List<Object[]> list = this.zzd;
        zzavg zzq = zzq();
        if (!list.isEmpty() && zzq != null) {
            for (Object[] objArr : list) {
                int length = objArr.length;
                if (length == 1) {
                    zzq.zzk((MotionEvent) objArr[0]);
                } else if (length == 3) {
                    zzq.zzl(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            list.clear();
        }
    }

    private final void zzs(boolean z) {
        String str = this.zzm.afmaVersion;
        Context zzt = zzt(this.zzk);
        zzarm zza = zzaro.zza();
        zza.zza(z);
        zza.zzb(str);
        int i = zzavk.zzw;
        this.zze.set(zzavk.zzt(zzt, new zzavi((zzaro) zza.zzbr())));
    }

    private static final Context zzt(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return context;
        }
        return applicationContext;
    }

    private static final zzavd zzu(Context context, VersionInfoParcel versionInfoParcel, boolean z, boolean z2) {
        zzarm zza = zzaro.zza();
        zza.zza(z);
        zza.zzb(versionInfoParcel.afmaVersion);
        return zzavd.zza(zzt(context), (zzaro) zza.zzbr(), z2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (((Boolean) zzbd.zzc().zzb(zzbcv.zzdK)).booleanValue()) {
                this.zza = zzi();
            }
            boolean z = this.zzm.isClientJar;
            final boolean z2 = false;
            if (!((Boolean) zzbd.zzc().zzb(zzbcv.zzbj)).booleanValue() && z) {
                z2 = true;
            }
            if (zzm() == 1) {
                zzs(z2);
                if (this.zzp == 2) {
                    this.zzi.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.zzi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzk.zzc(zzk.this, z2);
                        }
                    });
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    zzavd zzu = zzu(this.zzk, this.zzm, z2, this.zzo);
                    this.zzf.set(zzu);
                    if (this.zzh && !zzu.zzr()) {
                        this.zzp = 1;
                        zzs(z2);
                    }
                } catch (NullPointerException e) {
                    this.zzp = 1;
                    zzs(z2);
                    this.zzj.zzc(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
            this.zzb.countDown();
            this.zzk = null;
            this.zzm = null;
        } catch (Throwable th) {
            this.zzb.countDown();
            this.zzk = null;
            this.zzm = null;
            throw th;
        }
    }

    public final String zzb(Context context, byte[] bArr) {
        zzavg zzq;
        if (zzj() && (zzq = zzq()) != null) {
            zzr();
            return zzq.zzf(zzt(context));
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zzd(Context context, String str, View view) {
        return zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zze(Context context, String str, View view, Activity activity) {
        if (zzj()) {
            zzavg zzq = zzq();
            if (((Boolean) zzbd.zzc().zzb(zzbcv.zzkV)).booleanValue()) {
                zzv.zzr();
                com.google.android.gms.ads.internal.util.zzs.zzK(view, 4, null);
            }
            if (zzq != null) {
                zzr();
                return zzq.zze(zzt(context), str, view, activity);
            }
            return "";
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zzf(Context context) {
        return zzb(context, null);
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zzg(final Context context) {
        try {
            return (String) zzgcy.zzj(new Callable() { // from class: com.google.android.gms.ads.internal.zzh
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzk.this.zzb(context, null);
                }
            }, this.zzi).get(((Integer) zzbd.zzc().zzb(zzbcv.zzcY)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException unused) {
            return Integer.toString(17);
        } catch (TimeoutException unused2) {
            return zzauz.zza(context, this.zzn.afmaVersion, zzc, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zzh(Context context, View view, Activity activity) {
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzkU)).booleanValue()) {
            if (zzj()) {
                zzavg zzq = zzq();
                if (((Boolean) zzbd.zzc().zzb(zzbcv.zzkV)).booleanValue()) {
                    zzv.zzr();
                    com.google.android.gms.ads.internal.util.zzs.zzK(view, 2, null);
                }
                if (zzq != null) {
                    return zzq.zzh(context, view, activity);
                }
                return "";
            }
            return "";
        }
        zzavg zzq2 = zzq();
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzkV)).booleanValue()) {
            zzv.zzr();
            com.google.android.gms.ads.internal.util.zzs.zzK(view, 2, null);
        }
        if (zzq2 != null) {
            return zzq2.zzh(context, view, activity);
        }
        return "";
    }

    public final boolean zzi() {
        Context context = this.zzk;
        zzj zzjVar = new zzj(this);
        zzfnx zzfnxVar = this.zzj;
        return new zzfpr(this.zzk, zzfox.zzb(context, zzfnxVar), zzjVar, ((Boolean) zzbd.zzc().zzb(zzbcv.zzcF)).booleanValue()).zzd(1);
    }

    public final boolean zzj() {
        try {
            this.zzb.await();
            return true;
        } catch (InterruptedException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzk(MotionEvent motionEvent) {
        zzavg zzq = zzq();
        if (zzq != null) {
            zzr();
            zzq.zzk(motionEvent);
            return;
        }
        this.zzd.add(new Object[]{motionEvent});
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzl(int i, int i2, int i3) {
        zzavg zzq = zzq();
        if (zzq != null) {
            zzr();
            zzq.zzl(i, i2, i3);
            return;
        }
        this.zzd.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    public final int zzm() {
        if (this.zzg && !this.zza) {
            return 1;
        }
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzavg zzq;
        zzavg zzq2;
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzde)).booleanValue()) {
            if (this.zzb.getCount() == 0 && (zzq2 = zzq()) != null) {
                zzq2.zzn(stackTraceElementArr);
            }
        } else if (zzj() && (zzq = zzq()) != null) {
            zzq.zzn(stackTraceElementArr);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzo(View view) {
        zzavg zzq = zzq();
        if (zzq != null) {
            zzq.zzo(view);
        }
    }

    public final int zzp() {
        return this.zzp;
    }
}
