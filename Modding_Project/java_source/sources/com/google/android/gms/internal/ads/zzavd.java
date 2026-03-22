package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.PlaybackException;
import com.tencent.rtmp.TXVodConstants;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzavd implements zzavg {
    @Nullable
    private static zzavd zzb;
    private final Context zzc;
    private final zzfpk zzd;
    private final zzfpr zze;
    private final zzfpt zzf;
    private final zzawi zzg;
    private final zzfnx zzh;
    private final Executor zzi;
    private final zzfpq zzj;
    private final zzawx zzl;
    @Nullable
    private final zzawp zzm;
    @Nullable
    private final zzawg zzn;
    private volatile boolean zzp;
    private volatile boolean zzq;
    private final int zzr;
    @VisibleForTesting
    volatile long zza = 0;
    private final Object zzo = new Object();
    private final CountDownLatch zzk = new CountDownLatch(1);

    @VisibleForTesting
    public zzavd(@NonNull Context context, @NonNull zzfnx zzfnxVar, @NonNull zzfpk zzfpkVar, @NonNull zzfpr zzfprVar, @NonNull zzfpt zzfptVar, @NonNull zzawi zzawiVar, @NonNull Executor executor, @NonNull zzfns zzfnsVar, int i, @Nullable zzawx zzawxVar, @Nullable zzawp zzawpVar, @Nullable zzawg zzawgVar) {
        this.zzq = false;
        this.zzc = context;
        this.zzh = zzfnxVar;
        this.zzd = zzfpkVar;
        this.zze = zzfprVar;
        this.zzf = zzfptVar;
        this.zzg = zzawiVar;
        this.zzi = executor;
        this.zzr = i;
        this.zzl = zzawxVar;
        this.zzm = zzawpVar;
        this.zzn = zzawgVar;
        this.zzq = false;
        this.zzj = new zzavb(this, zzfnsVar);
    }

    public static synchronized zzavd zza(@NonNull Context context, @NonNull zzaro zzaroVar, boolean z) {
        zzavd zzs;
        synchronized (zzavd.class) {
            zzfny zzc = zzfnz.zzc();
            zzc.zza(zzaroVar.zzf());
            zzc.zzg(zzaroVar.zzi());
            zzs = zzs(context, Executors.newCachedThreadPool(), zzc.zzh(), z);
        }
        return zzs;
    }

    public static /* bridge */ /* synthetic */ void zzj(zzavd zzavdVar) {
        String str;
        String str2;
        int length;
        boolean zza;
        long currentTimeMillis = System.currentTimeMillis();
        zzfpj zzu = zzavdVar.zzu(1);
        if (zzu != null) {
            String zzk = zzu.zza().zzk();
            str2 = zzu.zza().zzj();
            str = zzk;
        } else {
            str = null;
            str2 = null;
        }
        try {
            try {
                Context context = zzavdVar.zzc;
                int i = zzavdVar.zzr;
                zzfnx zzfnxVar = zzavdVar.zzh;
                zzfpo zza2 = zzfoh.zza(context, 1, i, str, str2, "1", zzfnxVar);
                byte[] bArr = zza2.zzb;
                if (bArr != null && (length = bArr.length) != 0) {
                    try {
                        zzayg zzb2 = zzayg.zzb(zzgxk.zzv(bArr, 0, length), zzgyc.zza());
                        if (!zzb2.zzc().zzk().isEmpty() && !zzb2.zzc().zzj().isEmpty() && zzb2.zzd().zzA().length != 0) {
                            zzfpj zzu2 = zzavdVar.zzu(1);
                            if (zzu2 != null) {
                                zzayj zza3 = zzu2.zza();
                                if (zzb2.zzc().zzk().equals(zza3.zzk())) {
                                    if (!zzb2.zzc().zzj().equals(zza3.zzj())) {
                                    }
                                }
                            }
                            zzfpq zzfpqVar = zzavdVar.zzj;
                            int i2 = zza2.zzc;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcD)).booleanValue()) {
                                if (i2 == 3) {
                                    zza = zzavdVar.zze.zza(zzb2);
                                } else {
                                    if (i2 == 4) {
                                        zza = zzavdVar.zze.zzb(zzb2, zzfpqVar);
                                    }
                                    zzavdVar.zzh.zzd(4009, System.currentTimeMillis() - currentTimeMillis);
                                }
                            } else {
                                zza = zzavdVar.zzd.zza(zzb2, zzfpqVar);
                            }
                            if (zza) {
                                zzfpj zzu3 = zzavdVar.zzu(1);
                                if (zzu3 != null) {
                                    if (zzavdVar.zzf.zzc(zzu3)) {
                                        zzavdVar.zzq = true;
                                    }
                                    zzavdVar.zza = System.currentTimeMillis() / 1000;
                                }
                            }
                            zzavdVar.zzh.zzd(4009, System.currentTimeMillis() - currentTimeMillis);
                        }
                        zzavdVar.zzh.zzd(5010, System.currentTimeMillis() - currentTimeMillis);
                    } catch (NullPointerException unused) {
                        zzavdVar.zzh.zzd(TXVodConstants.VOD_PLAY_EVT_VIDEO_SEI, System.currentTimeMillis() - currentTimeMillis);
                    }
                } else {
                    zzfnxVar.zzd(5009, System.currentTimeMillis() - currentTimeMillis);
                }
            } catch (zzgzh e) {
                zzavdVar.zzh.zzc(PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED, System.currentTimeMillis() - currentTimeMillis, e);
            }
            zzavdVar.zzk.countDown();
        } catch (Throwable th) {
            zzavdVar.zzk.countDown();
            throw th;
        }
    }

    private static synchronized zzavd zzs(@NonNull Context context, @NonNull Executor executor, zzfnz zzfnzVar, boolean z) {
        zzavd zzavdVar;
        zzavr zzavrVar;
        zzawx zzawxVar;
        zzawp zzawpVar;
        synchronized (zzavd.class) {
            try {
                if (zzb == null) {
                    zzfnx zza = zzfnx.zza(context, executor, z);
                    zzawg zzawgVar = null;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdG)).booleanValue()) {
                        zzavrVar = zzavr.zzc(context);
                    } else {
                        zzavrVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdH)).booleanValue()) {
                        zzawxVar = zzawx.zzd(context, executor);
                    } else {
                        zzawxVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcV)).booleanValue()) {
                        zzawpVar = new zzawp();
                    } else {
                        zzawpVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdd)).booleanValue()) {
                        zzawgVar = new zzawg();
                    }
                    zzawg zzawgVar2 = zzawgVar;
                    zzfoo zzc = zzfoo.zzc(context, executor, zza, zzfnzVar);
                    zzawh zzawhVar = new zzawh(context);
                    zzawi zzawiVar = new zzawi(zzfnzVar, zzc, new zzawv(context, zzawhVar), zzawhVar, zzavrVar, zzawxVar, zzawpVar, zzawgVar2);
                    int zzb2 = zzfox.zzb(context, zza);
                    zzfns zzfnsVar = new zzfns();
                    zzavd zzavdVar2 = new zzavd(context, zza, new zzfpk(context, zzb2), new zzfpr(context, zzb2, new zzava(zza), ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcF)).booleanValue()), new zzfpt(context, zzawiVar, zza, zzfnsVar, false), zzawiVar, executor, zzfnsVar, zzb2, zzawxVar, zzawpVar, zzawgVar2);
                    zzb = zzavdVar2;
                    zzavdVar2.zzm();
                    zzb.zzp();
                }
                zzavdVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzavdVar;
    }

    private final void zzt() {
        zzawx zzawxVar = this.zzl;
        if (zzawxVar != null) {
            zzawxVar.zzh();
        }
    }

    private final zzfpj zzu(int i) {
        if (!zzfox.zza(this.zzr)) {
            return null;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcD)).booleanValue()) {
            return this.zze.zzc(1);
        }
        return this.zzd.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zzd(Context context, @Nullable String str, @Nullable View view) {
        return zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zze(Context context, String str, @Nullable View view, @Nullable Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcV)).booleanValue()) {
            this.zzm.zzi();
        }
        zzp();
        zzfoa zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zza2 = zza.zza(context, null, str, view, activity);
            this.zzh.zzf(5000, System.currentTimeMillis() - currentTimeMillis, zza2, null);
            return zza2;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zzf(Context context) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcV)).booleanValue()) {
            this.zzm.zzj();
        }
        zzp();
        zzfoa zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzc = zza.zzc(context, null);
            this.zzh.zzf(5001, System.currentTimeMillis() - currentTimeMillis, zzc, null);
            return zzc;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zzg(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final String zzh(Context context, @Nullable View view, @Nullable Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcV)).booleanValue()) {
            this.zzm.zzk(context, view);
        }
        zzp();
        zzfoa zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzb2 = zza.zzb(context, null, view, activity);
            this.zzh.zzf(5002, System.currentTimeMillis() - currentTimeMillis, zzb2, null);
            return zzb2;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzk(@Nullable MotionEvent motionEvent) {
        zzfoa zza = this.zzf.zza();
        if (zza != null) {
            try {
                zza.zzd(null, motionEvent);
            } catch (zzfps e) {
                this.zzh.zzc(e.zza(), -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzl(int i, int i2, int i3) {
        DisplayMetrics displayMetrics;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzml)).booleanValue() && (displayMetrics = this.zzc.getResources().getDisplayMetrics()) != null) {
            float f = i;
            float f2 = displayMetrics.density;
            float f3 = i2;
            MotionEvent obtain = MotionEvent.obtain(0L, 0L, 0, f * f2, f3 * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzk(obtain);
            obtain.recycle();
            float f4 = displayMetrics.density;
            MotionEvent obtain2 = MotionEvent.obtain(0L, 0L, 2, f * f4, f3 * f4, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzk(obtain2);
            obtain2.recycle();
            float f5 = displayMetrics.density;
            MotionEvent obtain3 = MotionEvent.obtain(0L, i3, 1, f * f5, f3 * f5, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzk(obtain3);
            obtain3.recycle();
        }
    }

    public final synchronized void zzm() {
        long currentTimeMillis = System.currentTimeMillis();
        zzfpj zzu = zzu(1);
        if (zzu != null) {
            if (this.zzf.zzc(zzu)) {
                this.zzq = true;
                this.zzk.countDown();
                return;
            }
            return;
        }
        this.zzh.zzd(4013, System.currentTimeMillis() - currentTimeMillis);
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzawg zzawgVar = this.zzn;
        if (zzawgVar != null) {
            zzawgVar.zzb(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzo(@Nullable View view) {
        this.zzg.zzd(view);
    }

    public final void zzp() {
        if (!this.zzp) {
            synchronized (this.zzo) {
                try {
                    if (!this.zzp) {
                        if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                            return;
                        }
                        zzfpj zzb2 = this.zzf.zzb();
                        if ((zzb2 == null || zzb2.zzd(3600L)) && zzfox.zza(this.zzr)) {
                            this.zzi.execute(new zzavc(this));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final synchronized boolean zzr() {
        return this.zzq;
    }
}
