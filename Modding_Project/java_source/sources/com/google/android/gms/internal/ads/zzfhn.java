package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdFormat;
import com.vungle.ads.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfhn implements Runnable {
    private final zzfhq zzb;
    private String zzc;
    private String zze;
    private zzfcf zzf;
    private com.google.android.gms.ads.internal.client.zze zzg;
    private Future zzh;
    private final List zza = new ArrayList();
    private int zzi = 2;
    private zzfhs zzd = zzfhs.SCAR_REQUEST_TYPE_UNSPECIFIED;

    public zzfhn(zzfhq zzfhqVar) {
        this.zzb = zzfhqVar;
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        zzh();
    }

    public final synchronized zzfhn zza(zzfhc zzfhcVar) {
        try {
            if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
                List list = this.zza;
                zzfhcVar.zzj();
                list.add(zzfhcVar);
                Future future = this.zzh;
                if (future != null) {
                    future.cancel(false);
                }
                this.zzh = zzcaa.zzd.schedule(this, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjb)).intValue(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfhn zzb(String str) {
        if (((Boolean) zzbeo.zzc.zze()).booleanValue() && zzfhm.zze(str)) {
            this.zzc = str;
        }
        return this;
    }

    public final synchronized zzfhn zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            this.zzg = zzeVar;
        }
        return this;
    }

    public final synchronized zzfhn zzd(ArrayList arrayList) {
        try {
            if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
                if (!arrayList.contains("banner") && !arrayList.contains(AdFormat.BANNER.name())) {
                    if (!arrayList.contains(Constants.PLACEMENT_TYPE_INTERSTITIAL) && !arrayList.contains(AdFormat.INTERSTITIAL.name())) {
                        if (!arrayList.contains("native") && !arrayList.contains(AdFormat.NATIVE.name())) {
                            if (!arrayList.contains(Constants.PLACEMENT_TYPE_REWARDED) && !arrayList.contains(AdFormat.REWARDED.name())) {
                                if (arrayList.contains("app_open_ad")) {
                                    this.zzi = 7;
                                } else if (arrayList.contains("rewarded_interstitial") || arrayList.contains(AdFormat.REWARDED_INTERSTITIAL.name())) {
                                    this.zzi = 6;
                                }
                            }
                            this.zzi = 5;
                        }
                        this.zzi = 8;
                    }
                    this.zzi = 4;
                }
                this.zzi = 3;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfhn zze(String str) {
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            this.zze = str;
        }
        return this;
    }

    public final synchronized zzfhn zzf(Bundle bundle) {
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            this.zzd = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zza(bundle);
        }
        return this;
    }

    public final synchronized zzfhn zzg(zzfcf zzfcfVar) {
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            this.zzf = zzfcfVar;
        }
        return this;
    }

    public final synchronized void zzh() {
        try {
            if (!((Boolean) zzbeo.zzc.zze()).booleanValue()) {
                return;
            }
            Future future = this.zzh;
            if (future != null) {
                future.cancel(false);
            }
            List<zzfhc> list = this.zza;
            for (zzfhc zzfhcVar : list) {
                int i = this.zzi;
                if (i != 2) {
                    zzfhcVar.zzn(i);
                }
                if (!TextUtils.isEmpty(this.zzc)) {
                    zzfhcVar.zze(this.zzc);
                }
                if (!TextUtils.isEmpty(this.zze) && !zzfhcVar.zzl()) {
                    zzfhcVar.zzd(this.zze);
                }
                zzfcf zzfcfVar = this.zzf;
                if (zzfcfVar != null) {
                    zzfhcVar.zzb(zzfcfVar);
                } else {
                    com.google.android.gms.ads.internal.client.zze zzeVar = this.zzg;
                    if (zzeVar != null) {
                        zzfhcVar.zza(zzeVar);
                    }
                }
                zzfhcVar.zzf(this.zzd);
                this.zzb.zzc(zzfhcVar.zzm());
            }
            list.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized zzfhn zzi(int i) {
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            this.zzi = i;
        }
        return this;
    }
}
