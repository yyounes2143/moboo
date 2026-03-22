package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzfmn {
    private final String zza;
    private zzfnp zzb;
    private long zzc;
    private int zzd;

    public zzfmn(String str) {
        zzb();
        this.zza = str;
        this.zzb = new zzfnp(null);
    }

    public final WebView zza() {
        return (WebView) this.zzb.get();
    }

    public final void zzb() {
        this.zzc = System.nanoTime();
        this.zzd = 1;
    }

    public void zzc() {
        this.zzb.clear();
    }

    public final void zzd(String str, long j) {
        if (j >= this.zzc && this.zzd != 3) {
            this.zzd = 3;
            zzfme.zza().zzh(zza(), this.zza, str);
        }
    }

    public final void zze() {
        zzfme.zza().zzc(zza(), this.zza);
    }

    public final void zzf(zzflc zzflcVar) {
        zzfme.zza().zzd(zza(), this.zza, zzflcVar.zzb());
    }

    public final void zzg(@NonNull Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        zzfmt.zze(jSONObject, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(date.getTime()));
        zzfme.zza().zzf(zza(), jSONObject);
    }

    public final void zzh(String str, long j) {
        if (j >= this.zzc) {
            this.zzd = 2;
            zzfme.zza().zzh(zza(), this.zza, str);
        }
    }

    public void zzi(zzflf zzflfVar, zzfld zzfldVar) {
        zzj(zzflfVar, zzfldVar, null);
    }

    public final void zzj(zzflf zzflfVar, zzfld zzfldVar, JSONObject jSONObject) {
        String zzh = zzflfVar.zzh();
        JSONObject jSONObject2 = new JSONObject();
        zzfmt.zze(jSONObject2, "environment", MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        zzfmt.zze(jSONObject2, "adSessionType", zzfldVar.zzd());
        JSONObject jSONObject3 = new JSONObject();
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        zzfmt.zze(jSONObject3, "deviceType", str + "; " + str2);
        zzfmt.zze(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        zzfmt.zze(jSONObject3, "os", "Android");
        zzfmt.zze(jSONObject2, "deviceInfo", jSONObject3);
        zzfmt.zze(jSONObject2, "deviceCategory", zzfms.zza().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        zzfmt.zze(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        zzfmt.zze(jSONObject4, HandleInvocationsFromAdViewer.KEY_OM_PARTNER, zzfldVar.zze().zzb());
        zzfmt.zze(jSONObject4, HandleInvocationsFromAdViewer.KEY_OM_PARTNER_VERSION, zzfldVar.zze().zzc());
        zzfmt.zze(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        zzfmt.zze(jSONObject5, "libraryVersion", "1.5.2-google_20241009");
        zzfmt.zze(jSONObject5, RemoteConfigConstants.RequestFieldKey.APP_ID, zzfmc.zzb().zza().getApplicationContext().getPackageName());
        zzfmt.zze(jSONObject2, MBridgeConstans.DYNAMIC_VIEW_WX_APP, jSONObject5);
        if (zzfldVar.zzf() != null) {
            zzfmt.zze(jSONObject2, "contentUrl", zzfldVar.zzf());
        }
        if (zzfldVar.zzg() != null) {
            zzfmt.zze(jSONObject2, "customReferenceData", zzfldVar.zzg());
        }
        JSONObject jSONObject6 = new JSONObject();
        Iterator it = zzfldVar.zzh().iterator();
        if (!it.hasNext()) {
            zzfme.zza().zzj(zza(), zzh, jSONObject2, jSONObject6, jSONObject);
        } else {
            zzflp zzflpVar = (zzflp) it.next();
            throw null;
        }
    }

    public final void zzk(boolean z) {
        String str;
        if (zzp()) {
            if (true != z) {
                str = "backgrounded";
            } else {
                str = "foregrounded";
            }
            zzfme.zza().zzi(zza(), this.zza, str);
        }
    }

    public final void zzl(float f) {
        zzfme.zza().zze(zza(), this.zza, f);
    }

    public final void zzm(boolean z) {
        String str;
        if (zzp()) {
            if (true != z) {
                str = "unlocked";
            } else {
                str = "locked";
            }
            zzfme.zza().zzg(zza(), this.zza, str);
        }
    }

    public final void zzn(WebView webView) {
        this.zzb = new zzfnp(webView);
    }

    public final boolean zzp() {
        if (this.zzb.get() != 0) {
            return true;
        }
        return false;
    }

    public void zzo() {
    }
}
