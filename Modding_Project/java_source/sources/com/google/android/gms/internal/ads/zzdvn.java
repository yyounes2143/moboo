package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdvn implements com.google.android.gms.ads.internal.overlay.zzr, zzcgr {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private zzdvc zzc;
    private zzcfb zzd;
    private boolean zze;
    private boolean zzf;
    private long zzg;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzdk zzh;
    private boolean zzi;

    public zzdvn(Context context, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = versionInfoParcel;
    }

    public static /* synthetic */ void zzh(zzdvn zzdvnVar, String str) {
        JSONObject zze = zzdvnVar.zzc.zze();
        if (!TextUtils.isEmpty(str)) {
            try {
                zze.put("redirectUrl", str);
            } catch (JSONException unused) {
            }
        }
        zzdvnVar.zzd.zzb("window.inspectorInfo", zze.toString());
    }

    private final synchronized boolean zzl(com.google.android.gms.ads.internal.client.zzdk zzdkVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzji)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Ad inspector had an internal error.");
            try {
                zzdkVar.zze(zzfdq.zzd(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        } else if (this.zzc == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Ad inspector had an internal error.");
            try {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(new NullPointerException("InspectorManager null"), "InspectorUi.shouldOpenUi");
                zzdkVar.zze(zzfdq.zzd(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        } else {
            if (!this.zze && !this.zzf) {
                if (com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() >= this.zzg + ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjl)).intValue()) {
                    return true;
                }
            }
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Ad inspector cannot be opened because it is already open.");
            try {
                zzdkVar.zze(zzfdq.zzd(19, null, null));
            } catch (RemoteException unused3) {
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgr
    public final synchronized void zza(boolean z, int i, String str, String str2) {
        if (z) {
            com.google.android.gms.ads.internal.util.zze.zza("Ad inspector loaded.");
            this.zze = true;
            zzk("");
            return;
        }
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Ad inspector failed to load.");
        try {
            zzbzn zzp = com.google.android.gms.ads.internal.zzv.zzp();
            zzp.zzw(new Exception("Failed to load UI. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2), "InspectorUi.onAdWebViewFinishedLoading 0");
            com.google.android.gms.ads.internal.client.zzdk zzdkVar = this.zzh;
            if (zzdkVar != null) {
                zzdkVar.zze(zzfdq.zzd(17, null, null));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "InspectorUi.onAdWebViewFinishedLoading 1");
        }
        this.zzi = true;
        this.zzd.destroy();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdt() {
        this.zzf = true;
        zzk("");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdw(int i) {
        this.zzd.destroy();
        if (!this.zzi) {
            com.google.android.gms.ads.internal.util.zze.zza("Inspector closed.");
            com.google.android.gms.ads.internal.client.zzdk zzdkVar = this.zzh;
            if (zzdkVar != null) {
                try {
                    zzdkVar.zze(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.zzf = false;
        this.zze = false;
        this.zzg = 0L;
        this.zzi = false;
        this.zzh = null;
    }

    @Nullable
    public final Activity zzg() {
        zzcfb zzcfbVar = this.zzd;
        if (zzcfbVar != null && !zzcfbVar.zzaE()) {
            return this.zzd.zzi();
        }
        return null;
    }

    public final void zzi(zzdvc zzdvcVar) {
        this.zzc = zzdvcVar;
    }

    public final synchronized void zzj(com.google.android.gms.ads.internal.client.zzdk zzdkVar, zzbkq zzbkqVar, zzbkj zzbkjVar, zzbjx zzbjxVar) {
        if (!zzl(zzdkVar)) {
            return;
        }
        try {
            com.google.android.gms.ads.internal.zzv.zzB();
            zzcfb zza = zzcfo.zza(this.zza, zzcgv.zza(), "", false, false, null, null, this.zzb, null, null, null, zzbbt.zza(), null, null, null, null, null);
            this.zzd = zza;
            zzcgt zzN = zza.zzN();
            if (zzN == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to obtain a web view for the ad inspector");
                try {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(new NullPointerException("Failed to obtain a web view for the ad inspector"), "InspectorUi.openInspector 2");
                    zzdkVar.zze(zzfdq.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                    return;
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "InspectorUi.openInspector 3");
                    return;
                }
            }
            this.zzh = zzdkVar;
            Context context = this.zza;
            zzN.zzX(null, null, null, null, null, false, null, null, null, null, null, null, null, zzbkqVar, null, new zzbkp(context), zzbkjVar, zzbjxVar, null);
            zzN.zzC(this);
            this.zzd.loadUrl((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjj));
            com.google.android.gms.ads.internal.zzv.zzj();
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(this, this.zzd, 1, this.zzb), true, null);
            this.zzg = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
        } catch (zzcfn e2) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to obtain a web view for the ad inspector", e2);
            try {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e2, "InspectorUi.openInspector 0");
                zzdkVar.zze(zzfdq.zzd(17, "Failed to obtain a web view for the ad inspector", null));
            } catch (RemoteException e3) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e3, "InspectorUi.openInspector 1");
            }
        }
    }

    public final synchronized void zzk(final String str) {
        if (this.zze && this.zzf) {
            zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvm
                @Override // java.lang.Runnable
                public final void run() {
                    zzdvn.zzh(zzdvn.this, str);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdH() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdk() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzds() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
    }
}
