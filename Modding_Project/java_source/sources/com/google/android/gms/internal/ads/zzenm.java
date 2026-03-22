package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzenm implements zzetv {
    @VisibleForTesting
    final zzbzn zza;
    @VisibleForTesting
    AppSetIdClient zzb;
    private final ScheduledExecutorService zzc;
    private final zzgdj zzd;
    private final Context zze;

    public zzenm(Context context, zzbzn zzbznVar, ScheduledExecutorService scheduledExecutorService, zzgdj zzgdjVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdl)).booleanValue()) {
            this.zzb = AppSet.getClient(context);
        }
        this.zze = context;
        this.zza = zzbznVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzgdjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        Task<AppSetIdInfo> appSetIdInfo;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdh)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdm)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdi)).booleanValue()) {
                    return zzgcy.zzm(zzfry.zza(this.zzb.getAppSetIdInfo(), null), new zzfur() { // from class: com.google.android.gms.internal.ads.zzenj
                        @Override // com.google.android.gms.internal.ads.zzfur
                        public final Object apply(Object obj) {
                            AppSetIdInfo appSetIdInfo2 = (AppSetIdInfo) obj;
                            return new zzenn(appSetIdInfo2.getId(), appSetIdInfo2.getScope());
                        }
                    }, zzcaa.zzg);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdl)).booleanValue()) {
                    appSetIdInfo = zzfdt.zza(this.zze);
                } else {
                    appSetIdInfo = this.zzb.getAppSetIdInfo();
                }
                if (appSetIdInfo == null) {
                    return zzgcy.zzh(new zzenn(null, -1));
                }
                ListenableFuture zzn = zzgcy.zzn(zzfry.zza(appSetIdInfo, null), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzenk
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        AppSetIdInfo appSetIdInfo2 = (AppSetIdInfo) obj;
                        if (appSetIdInfo2 == null) {
                            return zzgcy.zzh(new zzenn(null, -1));
                        }
                        return zzgcy.zzh(new zzenn(appSetIdInfo2.getId(), appSetIdInfo2.getScope()));
                    }
                }, zzcaa.zzg);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdj)).booleanValue()) {
                    zzn = zzgcy.zzo(zzn, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdk)).longValue(), TimeUnit.MILLISECONDS, this.zzc);
                }
                return zzgcy.zze(zzn, Exception.class, new zzfur() { // from class: com.google.android.gms.internal.ads.zzenl
                    @Override // com.google.android.gms.internal.ads.zzfur
                    public final Object apply(Object obj) {
                        zzenm.this.zza.zzw((Exception) obj, "AppSetIdInfoSignal");
                        return new zzenn(null, -1);
                    }
                }, this.zzd);
            }
        }
        return zzgcy.zzh(new zzenn(null, -1));
    }
}
