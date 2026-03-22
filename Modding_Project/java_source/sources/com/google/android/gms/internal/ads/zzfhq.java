package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfhq implements Runnable {
    @GuardedBy("enabledLock")
    @VisibleForTesting
    public static Boolean zzb;
    private final Context zze;
    private final VersionInfoParcel zzf;
    private int zzi;
    private final zzdpq zzj;
    private final List zzk;
    private final zzbvt zzm;
    @VisibleForTesting
    public static final Object zza = new Object();
    private static final Object zzc = new Object();
    private static final Object zzd = new Object();
    @GuardedBy("protoLock")
    private final zzfhv zzg = zzfhz.zzb();
    private String zzh = "";
    @GuardedBy("initLock")
    private boolean zzl = false;

    public zzfhq(Context context, VersionInfoParcel versionInfoParcel, zzdpq zzdpqVar, zzdzz zzdzzVar, zzbvt zzbvtVar) {
        this.zze = context;
        this.zzf = versionInfoParcel;
        this.zzj = zzdpqVar;
        this.zzm = zzbvtVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzje)).booleanValue()) {
            this.zzk = com.google.android.gms.ads.internal.util.zzs.zzd();
        } else {
            this.zzk = zzfyc.zzn();
        }
    }

    public static boolean zza() {
        boolean booleanValue;
        boolean z;
        synchronized (zza) {
            try {
                if (zzb == null) {
                    if (!((Boolean) zzbeo.zzb.zze()).booleanValue()) {
                        zzb = Boolean.FALSE;
                    } else {
                        if (Math.random() < ((Double) zzbeo.zza.zze()).doubleValue()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        zzb = Boolean.valueOf(z);
                    }
                }
                booleanValue = zzb.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    public static /* synthetic */ void zzb(zzfhq zzfhqVar, zzfhg zzfhgVar) {
        synchronized (zzd) {
            try {
                if (!zzfhqVar.zzl) {
                    zzfhqVar.zzl = true;
                    if (zza()) {
                        try {
                            com.google.android.gms.ads.internal.zzv.zzr();
                            zzfhqVar.zzh = com.google.android.gms.ads.internal.util.zzs.zzq(zzfhqVar.zze);
                        } catch (RemoteException | RuntimeException e) {
                            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "CuiMonitor.gettingAppIdFromManifest");
                        }
                        zzfhqVar.zzi = GoogleApiAvailabilityLight.getInstance().getApkVersion(zzfhqVar.zze);
                        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziZ)).intValue();
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmg)).booleanValue()) {
                            long j = intValue;
                            zzcaa.zzd.scheduleWithFixedDelay(zzfhqVar, j, j, TimeUnit.MILLISECONDS);
                        } else {
                            long j2 = intValue;
                            zzcaa.zzd.scheduleAtFixedRate(zzfhqVar, j2, j2, TimeUnit.MILLISECONDS);
                        }
                    }
                }
            } finally {
            }
        }
        if (zza() && zzfhgVar != null) {
            synchronized (zzc) {
                try {
                    zzfhv zzfhvVar = zzfhqVar.zzg;
                    if (zzfhvVar.zza() < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzja)).intValue()) {
                        zzfhr zza2 = zzfhu.zza();
                        zza2.zzu(zzfhgVar.zzm());
                        zza2.zzq(zzfhgVar.zzl());
                        zza2.zzg(zzfhgVar.zzb());
                        zza2.zzw(3);
                        zza2.zzn(zzfhqVar.zzf.afmaVersion);
                        zza2.zzb(zzfhqVar.zzh);
                        zza2.zzk(Build.VERSION.RELEASE);
                        zza2.zzr(Build.VERSION.SDK_INT);
                        zza2.zzv(zzfhgVar.zzo());
                        zza2.zzj(zzfhgVar.zza());
                        zza2.zze(zzfhqVar.zzi);
                        zza2.zzt(zzfhgVar.zzn());
                        zza2.zzc(zzfhgVar.zze());
                        zza2.zzf(zzfhgVar.zzg());
                        zza2.zzh(zzfhgVar.zzh());
                        zza2.zzi(zzfhqVar.zzj.zzb(zzfhgVar.zzh()));
                        zza2.zzl(zzfhgVar.zzi());
                        zza2.zzm(zzfhgVar.zzd());
                        zza2.zzd(zzfhgVar.zzf());
                        zza2.zzs(zzfhgVar.zzk());
                        zza2.zzo(zzfhgVar.zzj());
                        zza2.zzp(zzfhgVar.zzc());
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzje)).booleanValue()) {
                            zza2.zza(zzfhqVar.zzk);
                        }
                        zzfhw zza3 = zzfhx.zza();
                        zza3.zza(zza2);
                        zzfhvVar.zzb(zza3);
                    }
                } finally {
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] zzaV;
        if (zza()) {
            Object obj = zzc;
            synchronized (obj) {
                try {
                    if (this.zzg.zza() == 0) {
                        return;
                    }
                    try {
                        synchronized (obj) {
                            zzfhv zzfhvVar = this.zzg;
                            zzaV = ((zzfhz) zzfhvVar.zzbr()).zzaV();
                            zzfhvVar.zzc();
                        }
                        new zzdzy(this.zze, this.zzf.afmaVersion, this.zzm, Binder.getCallingUid()).zza(new zzdzw((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziY), 60000, new HashMap(), zzaV, CommonGatewayClient.HEADER_PROTOBUF, false));
                    } catch (Exception e) {
                        if ((e instanceof zzdwf) && ((zzdwf) e).zza() == 3) {
                            return;
                        }
                        com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "CuiMonitor.sendCuiPing");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void zzc(@Nullable final zzfhg zzfhgVar) {
        zzcaa.zza.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfhp
            @Override // java.lang.Runnable
            public final void run() {
                zzfhq.zzb(zzfhq.this, zzfhgVar);
            }
        });
    }
}
