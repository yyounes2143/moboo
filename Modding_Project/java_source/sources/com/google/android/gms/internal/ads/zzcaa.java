package com.google.android.gms.internal.ads;

import androidx.webkit.Profile;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcaa {
    public static final zzgdj zza;
    public static final zzgdj zzb;
    public static final zzgdj zzc;
    public static final ScheduledExecutorService zzd;
    public static final zzgdk zze;
    public static final zzgdj zzf;
    public static final zzgdj zzg;

    static {
        ExecutorService threadPoolExecutor;
        ExecutorService executorService;
        ExecutorService executorService2;
        if (ClientLibraryUtils.isPackageSide()) {
            zzfrk.zza();
            threadPoolExecutor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzbzw(Profile.DEFAULT_PROFILE_NAME)));
        } else {
            zzbcm zzbcmVar = zzbcv.zzlB;
            if (com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcmVar) != null && ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcmVar)).booleanValue()) {
                zzbcm zzbcmVar2 = zzbcv.zzlC;
                if (com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcmVar2) != null) {
                    zzbcm zzbcmVar3 = zzbcv.zzlD;
                    if (com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcmVar3) != null) {
                        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcmVar2)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcmVar2)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbzw(Profile.DEFAULT_PROFILE_NAME));
                        threadPoolExecutor2.allowCoreThreadTimeOut(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcmVar3)).booleanValue());
                        threadPoolExecutor = threadPoolExecutor2;
                    }
                }
            }
            threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzbzw(Profile.DEFAULT_PROFILE_NAME));
        }
        zza = new zzbzy(threadPoolExecutor, null);
        if (ClientLibraryUtils.isPackageSide()) {
            executorService = zzfrk.zza().zzc(5, new zzbzw("Loader"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbzw("Loader"));
            threadPoolExecutor3.allowCoreThreadTimeOut(true);
            executorService = threadPoolExecutor3;
        }
        zzb = new zzbzy(executorService, null);
        if (ClientLibraryUtils.isPackageSide()) {
            executorService2 = zzfrk.zza().zzb(new zzbzw("Activeview"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor4 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbzw("Activeview"));
            threadPoolExecutor4.allowCoreThreadTimeOut(true);
            executorService2 = threadPoolExecutor4;
        }
        zzc = new zzbzy(executorService2, null);
        zzbzv zzbzvVar = new zzbzv(3, new zzbzw("Schedule"));
        zzd = zzbzvVar;
        zze = zzgdq.zzb(zzbzvVar);
        zzf = new zzbzy(new zzbzx(), null);
        zzg = new zzbzy(zzgdq.zzc(), null);
    }
}
