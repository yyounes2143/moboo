package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.InputEvent;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.common.util.concurrent.ListenableFuture;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcmn {
    @VisibleForTesting
    zzbuk zza;
    @VisibleForTesting
    zzbuk zzb;
    private final Context zzc;
    private final com.google.android.gms.ads.internal.util.zzg zzd;
    private final zzedb zze;
    private final zzdpi zzf;
    private final zzgdj zzg;
    private final Executor zzh;
    private final ScheduledExecutorService zzi;

    public zzcmn(Context context, com.google.android.gms.ads.internal.util.zzg zzgVar, zzedb zzedbVar, zzdpi zzdpiVar, zzgdj zzgdjVar, zzgdj zzgdjVar2, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = context;
        this.zzd = zzgVar;
        this.zze = zzedbVar;
        this.zzf = zzdpiVar;
        this.zzg = zzgdjVar;
        this.zzh = zzgdjVar2;
        this.zzi = scheduledExecutorService;
    }

    public static /* synthetic */ ListenableFuture zzb(zzcmn zzcmnVar, final Uri.Builder builder, String str, InputEvent inputEvent, Integer num) {
        if (num.intValue() == 1) {
            Uri.Builder buildUpon = builder.build().buildUpon();
            buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkz), "1");
            buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzky), "12");
            if (str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkA))) {
                buildUpon.authority((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkB));
            }
            return (zzgcp) zzgcy.zzn(zzgcp.zzw(zzcmnVar.zze.zzb(buildUpon.build(), inputEvent)), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzcmj
                @Override // com.google.android.gms.internal.ads.zzgcf
                public final ListenableFuture zza(Object obj) {
                    zzbcm zzbcmVar = zzbcv.zzky;
                    Uri.Builder builder2 = builder;
                    builder2.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar), "12");
                    return zzgcy.zzh(builder2.toString());
                }
            }, zzcmnVar.zzh);
        }
        builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzky), "10");
        return zzgcy.zzh(builder.toString());
    }

    public static /* synthetic */ ListenableFuture zzc(final zzcmn zzcmnVar, String str, final Throwable th) {
        zzcmnVar.zzg.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmg
            @Override // java.lang.Runnable
            public final void run() {
                zzcmn.zzg(zzcmn.this, th);
            }
        });
        return zzgcy.zzh(str);
    }

    public static /* synthetic */ ListenableFuture zzd(final zzcmn zzcmnVar, Uri.Builder builder, final Throwable th) {
        zzcmnVar.zzg.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmf
            @Override // java.lang.Runnable
            public final void run() {
                zzcmn.zzh(zzcmn.this, th);
            }
        });
        builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzky), DbParams.GZIP_DATA_ENCRYPT);
        return zzgcy.zzh(builder.toString());
    }

    public static /* synthetic */ void zzg(zzcmn zzcmnVar, Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkD)).booleanValue()) {
            zzbuk zzc = zzbui.zzc(zzcmnVar.zzc);
            zzcmnVar.zzb = zzc;
            zzc.zzh(th, "AttributionReporting.getUpdatedUrlAndRegisterSource");
            return;
        }
        zzbuk zza = zzbui.zza(zzcmnVar.zzc);
        zzcmnVar.zza = zza;
        zza.zzh(th, "AttributionReportingSampled.getUpdatedUrlAndRegisterSource");
    }

    public static /* synthetic */ void zzh(zzcmn zzcmnVar, Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkD)).booleanValue()) {
            zzbuk zzc = zzbui.zzc(zzcmnVar.zzc);
            zzcmnVar.zzb = zzc;
            zzc.zzh(th, "AttributionReporting");
            return;
        }
        zzbuk zza = zzbui.zza(zzcmnVar.zzc);
        zzcmnVar.zza = zza;
        zza.zzh(th, "AttributionReportingSampled");
    }

    public static boolean zzj(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkw));
    }

    private final ListenableFuture zzk(final String str, @Nullable final InputEvent inputEvent, Random random) {
        try {
            if (str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkw)) && !this.zzd.zzN()) {
                final Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkx), String.valueOf(random.nextInt(Integer.MAX_VALUE)));
                if (inputEvent == null) {
                    buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzky), "11");
                    return zzgcy.zzh(buildUpon.toString());
                }
                return (zzgcp) zzgcy.zzf((zzgcp) zzgcy.zzn(zzgcp.zzw(this.zze.zza()), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzcmh
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        return zzcmn.zzb(zzcmn.this, buildUpon, str, inputEvent, (Integer) obj);
                    }
                }, this.zzh), Throwable.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzcmi
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        return zzcmn.zzd(zzcmn.this, buildUpon, (Throwable) obj);
                    }
                }, this.zzg);
            }
            return zzgcy.zzh(str);
        } catch (Exception e) {
            return zzgcy.zzg(e);
        }
    }

    public final ListenableFuture zze(final String str, Random random) {
        if (TextUtils.isEmpty(str)) {
            return zzgcy.zzh(str);
        }
        return zzgcy.zzf(zzk(str, this.zzf.zza(), random), Throwable.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzcme
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzcmn.zzc(zzcmn.this, str, (Throwable) obj);
            }
        }, this.zzg);
    }

    public final void zzi(String str, zzfjr zzfjrVar, Random random, @Nullable com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ListenableFuture zzk = zzk(str, this.zzf.zza(), random);
        zzbcm zzbcmVar = zzbcv.zzkC;
        zzgcy.zzr(zzgcy.zzo(zzk, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).intValue(), TimeUnit.MILLISECONDS, this.zzi), new zzcmm(this, zzfjrVar, str, zzvVar), this.zzg);
    }
}
