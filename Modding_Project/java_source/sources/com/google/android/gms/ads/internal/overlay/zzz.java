package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzcaa;
import com.google.android.gms.internal.ads.zzcfb;
import com.google.android.gms.internal.ads.zzfsr;
import com.google.android.gms.internal.ads.zzfss;
import com.google.android.gms.internal.ads.zzfst;
import com.google.android.gms.internal.ads.zzfsu;
import com.google.android.gms.internal.ads.zzftn;
import com.google.android.gms.internal.ads.zzftp;
import com.google.android.gms.internal.ads.zzftq;
import com.google.android.gms.internal.ads.zzftr;
import com.google.android.gms.internal.ads.zzfts;
import com.google.android.gms.internal.ads.zzfuf;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzz {
    private zzftq zzf;
    @Nullable
    private zzcfb zzc = null;
    private boolean zze = false;
    @Nullable
    private String zza = null;
    @Nullable
    private zzfst zzd = null;
    @Nullable
    private String zzb = null;

    public static /* synthetic */ void zza(zzz zzzVar, String str, Map map) {
        zzcfb zzcfbVar = zzzVar.zzc;
        if (zzcfbVar != null) {
            zzcfbVar.zzd(str, map);
        }
    }

    private final zzfts zzl() {
        zzftr zzc = zzfts.zzc();
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzlM)).booleanValue() && !TextUtils.isEmpty(this.zzb)) {
            zzc.zza(this.zzb);
        } else {
            String str = this.zza;
            if (str != null) {
                zzc.zzb(str);
            } else {
                zzg("Missing session token and/or appId", "onLMDupdate");
            }
        }
        return zzc.zzc();
    }

    private final void zzm() {
        if (this.zzf == null) {
            this.zzf = new zzy(this);
        }
    }

    public final synchronized void zzb(@Nullable zzcfb zzcfbVar, Context context) {
        this.zzc = zzcfbVar;
        if (!zzk(context)) {
            zzg("Unable to bind", "on_play_store_bind");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("action", "fetch_completed");
        zzf("on_play_store_bind", hashMap);
    }

    public final void zzc() {
        zzfst zzfstVar;
        if (this.zze && (zzfstVar = this.zzd) != null) {
            zzfstVar.zza(zzl(), this.zzf);
            zze("onLMDOverlayCollapse");
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
    }

    public final void zzd() {
        zzfst zzfstVar;
        if (this.zze && (zzfstVar = this.zzd) != null) {
            zzfsr zzc = zzfss.zzc();
            if (((Boolean) zzbd.zzc().zzb(zzbcv.zzlM)).booleanValue() && !TextUtils.isEmpty(this.zzb)) {
                zzc.zza(this.zzb);
            } else {
                String str = this.zza;
                if (str != null) {
                    zzc.zzb(str);
                } else {
                    zzg("Missing session token and/or appId", "onLMDupdate");
                }
            }
            zzfstVar.zzb(zzc.zzc(), this.zzf);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
    }

    @VisibleForTesting
    public final void zze(String str) {
        zzf(str, new HashMap());
    }

    @VisibleForTesting
    public final void zzf(final String str, final Map map) {
        zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzx
            @Override // java.lang.Runnable
            public final void run() {
                zzz.zza(zzz.this, str, map);
            }
        });
    }

    @VisibleForTesting
    public final void zzg(String str, String str2) {
        com.google.android.gms.ads.internal.util.zze.zza(str);
        if (this.zzc != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("message", str);
            hashMap.put("action", str2);
            zzf("onError", hashMap);
        }
    }

    public final void zzh() {
        zzfst zzfstVar;
        if (this.zze && (zzfstVar = this.zzd) != null) {
            zzfstVar.zzc(zzl(), this.zzf);
            zze("onLMDOverlayExpand");
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
    }

    @VisibleForTesting
    public final void zzi(zzftp zzftpVar) {
        if (!TextUtils.isEmpty(zzftpVar.zzb())) {
            if (!((Boolean) zzbd.zzc().zzb(zzbcv.zzlM)).booleanValue()) {
                this.zza = zzftpVar.zzb();
            }
        }
        switch (zzftpVar.zza()) {
            case 8152:
                zze("onLMDOverlayOpened");
                return;
            case 8153:
                zze("onLMDOverlayClicked");
                return;
            case 8154:
            case 8156:
            case 8158:
            case 8159:
            default:
                return;
            case 8155:
                zze("onLMDOverlayClose");
                return;
            case 8157:
                this.zza = null;
                this.zzb = null;
                this.zze = false;
                return;
            case 8160:
            case 8161:
            case 8162:
                HashMap hashMap = new HashMap();
                hashMap.put("error", String.valueOf(zzftpVar.zza()));
                zzf("onLMDOverlayFailedToOpen", hashMap);
                return;
        }
    }

    public final void zzj(@Nullable zzcfb zzcfbVar, @Nullable zzftn zzftnVar) {
        if (zzcfbVar == null) {
            zzg("adWebview missing", "onLMDShow");
            return;
        }
        this.zzc = zzcfbVar;
        if (!this.zze && !zzk(zzcfbVar.getContext())) {
            zzg("LMDOverlay not bound", "on_play_store_bind");
            return;
        }
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzlM)).booleanValue()) {
            this.zzb = zzftnVar.zzh();
        }
        zzm();
        zzfst zzfstVar = this.zzd;
        if (zzfstVar != null) {
            zzfstVar.zzd(zzftnVar, this.zzf);
        }
    }

    public final synchronized boolean zzk(Context context) {
        if (!zzfuf.zza(context)) {
            return false;
        }
        try {
            this.zzd = zzfsu.zza(context);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.util.zze.zza("Error connecting LMD Overlay service");
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "LastMileDeliveryOverlay.bindLastMileDeliveryService");
        }
        if (this.zzd == null) {
            this.zze = false;
            return false;
        }
        zzm();
        this.zze = true;
        return true;
    }
}
