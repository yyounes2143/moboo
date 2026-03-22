package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcbx {
    private static final boolean zza;
    private final Context zzb;
    private final String zzc;
    private final VersionInfoParcel zzd;
    @Nullable
    private final zzbdh zze;
    @Nullable
    private final zzbdk zzf;
    private final com.google.android.gms.ads.internal.util.zzbh zzg;
    private final long[] zzh;
    private final String[] zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private zzcbc zzo;
    private boolean zzp;
    private boolean zzq;
    private long zzr;

    static {
        boolean z;
        if (com.google.android.gms.ads.internal.client.zzbb.zze().nextInt(100) < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmV)).intValue()) {
            z = true;
        } else {
            z = false;
        }
        zza = z;
    }

    public zzcbx(Context context, VersionInfoParcel versionInfoParcel, String str, @Nullable zzbdk zzbdkVar, @Nullable zzbdh zzbdhVar) {
        com.google.android.gms.ads.internal.util.zzbf zzbfVar = new com.google.android.gms.ads.internal.util.zzbf();
        zzbfVar.zza("min_1", Double.MIN_VALUE, 1.0d);
        zzbfVar.zza("1_5", 1.0d, 5.0d);
        zzbfVar.zza("5_10", 5.0d, 10.0d);
        zzbfVar.zza("10_20", 10.0d, 20.0d);
        zzbfVar.zza("20_30", 20.0d, 30.0d);
        zzbfVar.zza("30_max", 30.0d, Double.MAX_VALUE);
        this.zzg = zzbfVar.zzb();
        this.zzj = false;
        this.zzk = false;
        this.zzl = false;
        this.zzm = false;
        this.zzr = -1L;
        this.zzb = context;
        this.zzd = versionInfoParcel;
        this.zzc = str;
        this.zzf = zzbdkVar;
        this.zze = zzbdhVar;
        String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzQ);
        if (str2 == null) {
            this.zzi = new String[0];
            this.zzh = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        int length = split.length;
        this.zzi = new String[length];
        this.zzh = new long[length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzh[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to parse frame hash target time number.", e);
                this.zzh[i] = -1;
            }
        }
    }

    public final void zza(zzcbc zzcbcVar) {
        zzbdk zzbdkVar = this.zzf;
        zzbdc.zza(zzbdkVar, this.zze, "vpc2");
        this.zzj = true;
        zzbdkVar.zzd("vpn", zzcbcVar.zzj());
        this.zzo = zzcbcVar;
    }

    public final void zzb() {
        if (this.zzj && !this.zzk) {
            zzbdc.zza(this.zzf, this.zze, "vfr2");
            this.zzk = true;
        }
    }

    public final void zzc() {
        this.zzn = true;
        if (this.zzk && !this.zzl) {
            zzbdc.zza(this.zzf, this.zze, "vfp2");
            this.zzl = true;
        }
    }

    public final void zzd() {
        if (zza && !this.zzp) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString(AdActivity.REQUEST_KEY_EXTRA, this.zzc);
            bundle.putString("player", this.zzo.zzj());
            for (com.google.android.gms.ads.internal.util.zzbe zzbeVar : this.zzg.zza()) {
                String str = zzbeVar.zza;
                String valueOf = String.valueOf(str);
                bundle.putString("fps_c_".concat(valueOf), Integer.toString(zzbeVar.zze));
                String valueOf2 = String.valueOf(str);
                bundle.putString("fps_p_".concat(valueOf2), Double.toString(zzbeVar.zzd));
            }
            int i = 0;
            while (true) {
                long[] jArr = this.zzh;
                if (i < jArr.length) {
                    String str2 = this.zzi[i];
                    if (str2 != null) {
                        bundle.putString("fh_".concat(Long.valueOf(jArr[i]).toString()), str2);
                    }
                    i++;
                } else {
                    com.google.android.gms.ads.internal.zzv.zzr().zzi(this.zzb, this.zzd.afmaVersion, "gmob-apps", bundle, true);
                    this.zzp = true;
                    return;
                }
            }
        }
    }

    public final void zze() {
        this.zzn = false;
    }

    public final void zzf(zzcbc zzcbcVar) {
        long j;
        if (this.zzl && !this.zzm) {
            if (com.google.android.gms.ads.internal.util.zze.zzc() && !this.zzm) {
                com.google.android.gms.ads.internal.util.zze.zza("VideoMetricsMixin first frame");
            }
            zzbdc.zza(this.zzf, this.zze, "vff2");
            this.zzm = true;
        }
        long nanoTime = com.google.android.gms.ads.internal.zzv.zzD().nanoTime();
        if (this.zzn && this.zzq && this.zzr != -1) {
            this.zzg.zzb(TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.zzr));
        }
        this.zzq = this.zzn;
        this.zzr = nanoTime;
        long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzR)).longValue();
        long zza2 = zzcbcVar.zza();
        int i = 0;
        while (true) {
            String[] strArr = this.zzi;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(zza2 - this.zzh[i])) {
                    int i2 = 8;
                    Bitmap bitmap = zzcbcVar.getBitmap(8, 8);
                    long j2 = 63;
                    long j3 = 0;
                    int i3 = 0;
                    while (i3 < i2) {
                        int i4 = 0;
                        while (i4 < i2) {
                            int pixel = bitmap.getPixel(i4, i3);
                            if (Color.blue(pixel) + Color.red(pixel) + Color.green(pixel) > 128) {
                                j = 1;
                            } else {
                                j = 0;
                            }
                            j3 |= j << ((int) j2);
                            j2--;
                            i4++;
                            i2 = 8;
                        }
                        i3++;
                        i2 = 8;
                    }
                    strArr[i] = String.format("%016X", Long.valueOf(j3));
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }
}
