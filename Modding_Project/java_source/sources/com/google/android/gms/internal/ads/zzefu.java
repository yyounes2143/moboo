package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzefu implements zzefo {
    private final zzdgw zza;
    private final zzgdj zzb;
    private final zzdlh zzc;
    private final zzfdo zzd;
    private final zzdny zze;
    private final zzdrx zzf;
    private final VersionInfoParcel zzg;
    private final Context zzh;
    private final zzbxr zzi;

    public zzefu(zzdgw zzdgwVar, zzgdj zzgdjVar, zzdlh zzdlhVar, zzfdo zzfdoVar, zzdny zzdnyVar, zzdrx zzdrxVar, VersionInfoParcel versionInfoParcel, Context context, zzbxr zzbxrVar) {
        this.zzg = versionInfoParcel;
        this.zzh = context;
        this.zzi = zzbxrVar;
        this.zza = zzdgwVar;
        this.zzb = zzgdjVar;
        this.zzc = zzdlhVar;
        this.zzd = zzfdoVar;
        this.zze = zzdnyVar;
        this.zzf = zzdrxVar;
    }

    public static /* synthetic */ zzdij zzc(zzefu zzefuVar, ListenableFuture listenableFuture, ListenableFuture listenableFuture2, zzfcg zzfcgVar, zzfbu zzfbuVar, JSONObject jSONObject, com.google.android.gms.ads.internal.zzb zzbVar, zzbxv zzbxvVar) {
        zzdio zzdioVar = (zzdio) listenableFuture.get();
        zzdns zzdnsVar = (zzdns) listenableFuture2.get();
        zzbcm zzbcmVar = zzbcv.zzct;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzefuVar.zzf.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdip zzd = zzefuVar.zza.zzd(new zzcrn(zzfcgVar, zzfbuVar, null), new zzdja(zzdioVar), new zzdhk(jSONObject, zzdnsVar, zzbVar, zzbxvVar));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            zzdrx zzdrxVar = zzefuVar.zzf;
            zzdrxVar.zza().putLong(zzdrl.RENDERING_AD_COMPONENT_CREATION_END.zza(), currentTimeMillis);
            zzdrxVar.zza().putLong(zzdrl.RENDERING_CONFIGURE_WEBVIEW_START.zza(), currentTimeMillis);
        }
        zzd.zzh().zzb();
        zzd.zzi().zza(zzdnsVar);
        zzd.zzg().zzc(zzdioVar.zzs());
        zzd.zzl().zza(zzefuVar.zze, zzdioVar.zzq());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzefuVar.zzf.zza().putLong(zzdrl.RENDERING_CONFIGURE_WEBVIEW_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        return zzd.zza();
    }

    public static /* synthetic */ ListenableFuture zzd(zzefu zzefuVar, zzfcg zzfcgVar, zzfbu zzfbuVar, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return zzgcy.zzg(new zzdwf(3));
        }
        int i = zzfcgVar.zza.zza.zzk;
        if (i > 1) {
            int length = jSONArray.length();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcu)).booleanValue()) {
                zzefuVar.zzf.zzd("nsl", String.valueOf(length));
            }
            zzefuVar.zzd.zzc(Math.min(length, i));
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                if (i2 < length) {
                    arrayList.add(zzefuVar.zzg(zzfcgVar, zzfbuVar, jSONArray.getJSONObject(i2)));
                } else {
                    arrayList.add(zzgcy.zzg(new zzdwf(3)));
                }
            }
            return zzgcy.zzh(arrayList);
        }
        return zzgcy.zzm(zzefuVar.zzg(zzfcgVar, zzfbuVar, jSONArray.getJSONObject(0)), new zzfur() { // from class: com.google.android.gms.internal.ads.zzeft
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return Collections.singletonList(zzgcy.zzh((zzdij) obj));
            }
        }, zzefuVar.zzb);
    }

    public static /* synthetic */ ListenableFuture zze(final zzefu zzefuVar, zzfbu zzfbuVar, final zzdns zzdnsVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcs)).booleanValue()) {
            zzefuVar.zzf.zza().putLong(zzdrl.RENDERING_NATIVE_ADS_PREPROCESS_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziV)).booleanValue() && PlatformVersion.isAtLeastR()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", zzfbuVar.zzs.zzc);
        jSONObject2.put("sdk_params", jSONObject);
        return zzgcy.zzn(zzdnsVar.zzg("google.afma.nativeAds.preProcessJson", jSONObject2), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzefq
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzefu.zzf(zzefu.this, zzdnsVar, (JSONObject) obj);
            }
        }, zzefuVar.zzb);
    }

    public static /* synthetic */ ListenableFuture zzf(zzefu zzefuVar, zzdns zzdnsVar, JSONObject jSONObject) {
        zzefuVar.zzd.zzb(zzgcy.zzh(zzdnsVar));
        if (jSONObject.optBoolean(FirebaseAnalytics.Param.SUCCESS)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcs)).booleanValue()) {
                zzefuVar.zzf.zza().putLong(zzdrl.RENDERING_NATIVE_ADS_PREPROCESS_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
            }
            return zzgcy.zzh(jSONObject.getJSONObject("json").getJSONArray(b.JSON_KEY_ADS));
        }
        throw new zzboc("process json failed");
    }

    private final ListenableFuture zzg(final zzfcg zzfcgVar, final zzfbu zzfbuVar, final JSONObject jSONObject) {
        com.google.android.gms.ads.internal.zzb zzbVar;
        zzbxv zzbxvVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzct)).booleanValue()) {
            this.zzf.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        final ListenableFuture zza = this.zzd.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznG)).booleanValue()) {
            Context context = this.zzh;
            zzbxv zza2 = zzcvo.zza(context, this.zzg, zzfbuVar, this.zzi);
            zzbVar = new com.google.android.gms.ads.internal.zzb(context, zza2, null);
            zzbxvVar = zza2;
        } else {
            zzbVar = new com.google.android.gms.ads.internal.zzb(this.zzh, null, null);
            zzbxvVar = null;
        }
        final com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar;
        final zzbxv zzbxvVar2 = zzbxvVar;
        final ListenableFuture zzd = this.zzc.zzd(zzfcgVar, zzfbuVar, jSONObject, zzbVar2, zzbxvVar2);
        return zzgcy.zzc(zza, zzd).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzefp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzefu.zzc(zzefu.this, zzd, zza, zzfcgVar, zzfbuVar, jSONObject, zzbVar2, zzbxvVar2);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(final zzfcg zzfcgVar, final zzfbu zzfbuVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcs)).booleanValue()) {
            this.zzf.zza().putLong(zzdrl.RENDERING_NATIVE_ADS_NATIVE_JS_WEBVIEW_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        ListenableFuture zza = this.zzd.zza();
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzefr
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzefu.zze(zzefu.this, zzfbuVar, (zzdns) obj);
            }
        };
        zzgdj zzgdjVar = this.zzb;
        return zzgcy.zzn(zzgcy.zzn(zza, zzgcfVar, zzgdjVar), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzefs
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzefu.zzd(zzefu.this, zzfcgVar, zzfbuVar, (JSONArray) obj);
            }
        }, zzgdjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final boolean zzb(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        zzfbz zzfbzVar = zzfbuVar.zzs;
        if (zzfbzVar != null && zzfbzVar.zzc != null) {
            return true;
        }
        return false;
    }
}
