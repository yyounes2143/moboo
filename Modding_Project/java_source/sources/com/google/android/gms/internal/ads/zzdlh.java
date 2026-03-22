package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdlh {
    private final zzgdj zza;
    private final zzdlw zzb;
    private final zzdmb zzc;
    private final zzdrx zzd;

    public zzdlh(zzgdj zzgdjVar, zzdlw zzdlwVar, zzdmb zzdmbVar, zzdrx zzdrxVar) {
        this.zza = zzgdjVar;
        this.zzb = zzdlwVar;
        this.zzc = zzdmbVar;
        this.zzd = zzdrxVar;
    }

    public static /* synthetic */ zzdio zza(zzdlh zzdlhVar, ListenableFuture listenableFuture, ListenableFuture listenableFuture2, ListenableFuture listenableFuture3, ListenableFuture listenableFuture4, ListenableFuture listenableFuture5, JSONObject jSONObject, ListenableFuture listenableFuture6, ListenableFuture listenableFuture7, ListenableFuture listenableFuture8, ListenableFuture listenableFuture9, ListenableFuture listenableFuture10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcs)).booleanValue()) {
            zzdlhVar.zzd.zza().putLong(zzdrl.RENDERING_NATIVE_ASSETS_LOADING_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdio zzdioVar = (zzdio) listenableFuture.get();
        zzdioVar.zzP((List) listenableFuture2.get());
        zzdioVar.zzM((zzbgg) listenableFuture3.get());
        zzdioVar.zzQ((zzbgg) listenableFuture4.get());
        zzdioVar.zzJ((zzbfz) listenableFuture5.get());
        zzdioVar.zzS(zzdlw.zzl(jSONObject));
        zzdioVar.zzL(zzdlw.zzk(jSONObject));
        zzcfb zzcfbVar = (zzcfb) listenableFuture6.get();
        if (zzcfbVar != null) {
            zzdioVar.zzad(zzcfbVar);
            zzdioVar.zzac(zzcfbVar.zzF());
            zzdioVar.zzab(zzcfbVar.zzq());
        }
        zzdioVar.zzd().putAll((Bundle) listenableFuture7.get());
        zzcfb zzcfbVar2 = (zzcfb) listenableFuture8.get();
        if (zzcfbVar2 != null) {
            zzdioVar.zzO(zzcfbVar2);
            zzdioVar.zzae(zzcfbVar2.zzF());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfD)).booleanValue() && !zzf(jSONObject)) {
            zzdioVar.zzU(listenableFuture9);
            zzdioVar.zzX(new zzcaf());
        } else {
            zzcfb zzcfbVar3 = (zzcfb) listenableFuture9.get();
            if (zzcfbVar3 != null) {
                zzdioVar.zzT(zzcfbVar3);
            }
        }
        for (zzdma zzdmaVar : (List) listenableFuture10.get()) {
            if (zzdmaVar.zza != 1) {
                zzdioVar.zzN(zzdmaVar.zzb, zzdmaVar.zzd);
            } else {
                zzdioVar.zzZ(zzdmaVar.zzb, zzdmaVar.zzc);
            }
        }
        return zzdioVar;
    }

    public static /* synthetic */ zzdio zzb(zzdlh zzdlhVar, zzfcg zzfcgVar, zzfbu zzfbuVar, JSONObject jSONObject) {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue()) {
            zzdlhVar.zzd.zza().putLong(zzdrl.NATIVE_ASSETS_LOADING_BASIC_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdio zzdioVar = new zzdio();
        zzdioVar.zzaa(jSONObject.optInt("template_id", -1));
        zzdioVar.zzK(jSONObject.optString("custom_template_id"));
        JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
        if (optJSONObject != null) {
            str = optJSONObject.optString("omid_partner_name");
        } else {
            str = null;
        }
        zzdioVar.zzV(str);
        zzfcp zzfcpVar = zzfcgVar.zza.zza;
        if (zzfcpVar.zzg.contains(Integer.toString(zzdioVar.zzc()))) {
            if (zzdioVar.zzc() == 3) {
                if (zzdioVar.zzA() != null) {
                    if (!zzfcpVar.zzh.contains(zzdioVar.zzA())) {
                        throw new zzegy(1, "Unexpected custom template id in the response.");
                    }
                } else {
                    throw new zzegy(1, "No custom template id for custom template ad response.");
                }
            }
            zzdioVar.zzY(jSONObject.optDouble(CampaignEx.JSON_KEY_STAR, -1.0d));
            String optString = jSONObject.optString("headline", null);
            if (zzfbuVar.zzM) {
                com.google.android.gms.ads.internal.zzv.zzr();
                optString = com.google.android.gms.ads.internal.util.zzs.zzz() + " : " + optString;
            }
            zzdioVar.zzZ("headline", optString);
            zzdioVar.zzZ("body", jSONObject.optString("body", null));
            zzdioVar.zzZ("call_to_action", jSONObject.optString("call_to_action", null));
            zzdioVar.zzZ("store", jSONObject.optString("store", null));
            zzdioVar.zzZ("price", jSONObject.optString("price", null));
            zzdioVar.zzZ("advertiser", jSONObject.optString("advertiser", null));
            return zzdioVar;
        }
        throw new zzegy(1, "Invalid template ID: " + zzdioVar.zzc());
    }

    private final ListenableFuture zze(ListenableFuture listenableFuture, zzdrl zzdrlVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue()) {
            zzgcy.zzr(listenableFuture, new zzdlg(this, zzdrlVar), this.zza);
        }
        return listenableFuture;
    }

    private static final boolean zzf(JSONObject jSONObject) {
        if (jSONObject.optInt("template_id") == 3) {
            return true;
        }
        return false;
    }

    public final ListenableFuture zzd(final zzfcg zzfcgVar, final zzfbu zzfbuVar, final JSONObject jSONObject, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbxv zzbxvVar) {
        ListenableFuture zzh;
        JSONArray optJSONArray;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcs)).booleanValue()) {
            this.zzd.zza().putLong(zzdrl.RENDERING_NATIVE_ASSETS_LOADING_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        final ListenableFuture zzb = this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdle
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdlh.zzb(zzdlh.this, zzfcgVar, zzfbuVar, jSONObject);
            }
        });
        zze(zzb, zzdrl.NATIVE_ASSETS_LOADING_BASIC_END);
        zzdlw zzdlwVar = this.zzb;
        final ListenableFuture zzf = zzdlwVar.zzf(jSONObject, "images", zzdrl.NATIVE_ASSETS_LOADING_IMAGE_START);
        zze(zzf, zzdrl.NATIVE_ASSETS_LOADING_IMAGE_END);
        zzfbx zzfbxVar = zzfcgVar.zzb.zzb;
        final ListenableFuture zzg = zzdlwVar.zzg(jSONObject, "images", zzfbuVar, zzfbxVar, zzbVar, zzbxvVar);
        zze(zzg, zzdrl.NATIVE_ASSETS_LOADING_IMAGE_COMPOSITION_END);
        final ListenableFuture zze = zzdlwVar.zze(jSONObject, "secondary_image", zzdrl.NATIVE_ASSETS_LOADING_LOGO_START);
        zze(zze, zzdrl.NATIVE_ASSETS_LOADING_LOGO_END);
        final ListenableFuture zze2 = zzdlwVar.zze(jSONObject, "app_icon", zzdrl.NATIVE_ASSETS_LOADING_ICON_START);
        zze(zze2, zzdrl.NATIVE_ASSETS_LOADING_ICON_END);
        final ListenableFuture zzd = zzdlwVar.zzd(jSONObject, "attribution", zzdrl.NATIVE_ASSETS_LOADING_ATTRIBUTION_START);
        zze(zzd, zzdrl.NATIVE_ASSETS_LOADING_ATTRIBUTION_END);
        final ListenableFuture zzj = zzdlwVar.zzj(jSONObject, zzfbuVar, zzfbxVar, zzbVar, zzbxvVar);
        zze(zzj, zzdrl.NATIVE_ASSETS_LOADING_VIDEO_END);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzni)).booleanValue() && jSONObject.has("video")) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject.has("flags") && (optJSONArray = optJSONObject.optJSONArray("flags")) != null) {
                int i = 0;
                while (true) {
                    if (i >= optJSONArray.length()) {
                        break;
                    }
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                    if (optJSONObject2 != null && optJSONObject2.optString("key").equals("afma_video_player_type")) {
                        try {
                            if (Integer.parseInt(optJSONObject2.optString("value")) == 3) {
                                zzh = this.zzb.zzh(zzj);
                                zze(zzh, zzdrl.NATIVE_ASSETS_LOADING_MEDIA_END);
                            }
                        } catch (NumberFormatException unused) {
                        }
                    } else {
                        i++;
                    }
                }
            }
        }
        zzh = zzgcy.zzh(new Bundle());
        final ListenableFuture zza = this.zzc.zza(jSONObject, "custom_assets");
        zze(zza, zzdrl.NATIVE_ASSETS_LOADING_CUSTOM_END);
        final ListenableFuture zzi = this.zzb.zzi(jSONObject, zzbVar, zzbxvVar);
        zze(zzi, zzdrl.NATIVE_ASSETS_LOADING_OMID_END);
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzb);
        arrayList.add(zzf);
        arrayList.add(zzg);
        arrayList.add(zze);
        arrayList.add(zze2);
        arrayList.add(zzd);
        arrayList.add(zzj);
        arrayList.add(zzh);
        arrayList.add(zza);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfD)).booleanValue() || zzf(jSONObject)) {
            arrayList.add(zzi);
        }
        final ListenableFuture listenableFuture = zzh;
        return zzgcy.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdlf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdlh.zza(zzdlh.this, zzb, zzf, zze2, zze, zzd, jSONObject, zzj, listenableFuture, zzg, zzi, zza);
            }
        }, this.zza);
    }
}
