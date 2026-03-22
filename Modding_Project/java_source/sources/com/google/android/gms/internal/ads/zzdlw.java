package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdlw {
    private final Context zza;
    private final zzdlc zzb;
    private final zzavl zzc;
    private final VersionInfoParcel zzd;
    private final com.google.android.gms.ads.internal.zza zze;
    private final zzbbt zzf;
    private final Executor zzg;
    private final zzbfv zzh;
    private final zzdmo zzi;
    private final zzdpd zzj;
    private final ScheduledExecutorService zzk;
    private final zzdny zzl;
    private final zzdsd zzm;
    private final zzfjr zzn;
    private final zzebt zzo;
    private final zzece zzp;
    private final zzfct zzq;
    private final zzdrx zzr;

    public zzdlw(Context context, zzdlc zzdlcVar, zzavl zzavlVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzbbt zzbbtVar, Executor executor, zzfcp zzfcpVar, zzdmo zzdmoVar, zzdpd zzdpdVar, ScheduledExecutorService scheduledExecutorService, zzdsd zzdsdVar, zzfjr zzfjrVar, zzebt zzebtVar, zzdny zzdnyVar, zzece zzeceVar, zzfct zzfctVar, zzdrx zzdrxVar) {
        this.zza = context;
        this.zzb = zzdlcVar;
        this.zzc = zzavlVar;
        this.zzd = versionInfoParcel;
        this.zze = zzaVar;
        this.zzf = zzbbtVar;
        this.zzg = executor;
        this.zzh = zzfcpVar.zzi;
        this.zzi = zzdmoVar;
        this.zzj = zzdpdVar;
        this.zzk = scheduledExecutorService;
        this.zzm = zzdsdVar;
        this.zzn = zzfjrVar;
        this.zzo = zzebtVar;
        this.zzl = zzdnyVar;
        this.zzp = zzeceVar;
        this.zzq = zzfctVar;
        this.zzr = zzdrxVar;
    }

    public static /* synthetic */ zzbfq zza(zzdlw zzdlwVar, JSONObject jSONObject, List list) {
        Integer num = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString("text");
        Integer zzs = zzs(jSONObject, "bg_color");
        Integer zzs2 = zzs(jSONObject, "text_color");
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", 1000);
        int optInt3 = jSONObject.optInt("presentation_ms", 4000);
        if (optInt > 0) {
            num = Integer.valueOf(optInt);
        }
        return new zzbfq(optString, list, zzs, zzs2, num, optInt3 + optInt2, zzdlwVar.zzh.zze, optBoolean);
    }

    public static /* synthetic */ ListenableFuture zzb(zzdlw zzdlwVar, String str, zzbxv zzbxvVar, com.google.android.gms.ads.internal.zzb zzbVar, Object obj) {
        com.google.android.gms.ads.internal.zzv.zzB();
        Context context = zzdlwVar.zza;
        zzece zzeceVar = zzdlwVar.zzp;
        zzcfb zza = zzcfo.zza(context, zzcgv.zza(), "native-omid", false, false, zzdlwVar.zzc, null, zzdlwVar.zzd, null, null, zzdlwVar.zze, zzdlwVar.zzf, null, null, zzeceVar, zzdlwVar.zzq, zzdlwVar.zzm);
        final zzcae zza2 = zzcae.zza(zza);
        zza.zzN().zzC(new zzcgr() { // from class: com.google.android.gms.internal.ads.zzdln
            @Override // com.google.android.gms.internal.ads.zzcgr
            public final void zza(boolean z, int i, String str2, String str3) {
                zzcae.this.zzb();
            }
        });
        zza.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznG)).booleanValue()) {
            if (zzbxvVar != null) {
                zza.zzN().zzL(zzbxvVar);
            }
            zza.zzN().zzD(zzbVar);
        }
        return zza2;
    }

    public static /* synthetic */ ListenableFuture zzc(zzdlw zzdlwVar, com.google.android.gms.ads.internal.client.zzr zzrVar, zzfbu zzfbuVar, zzfbx zzfbxVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbxv zzbxvVar, String str, String str2, Object obj) {
        com.google.android.gms.ads.internal.zzb zzbVar2;
        zzbxv zzbxvVar2;
        zzcfb zza = zzdlwVar.zzj.zza(zzrVar, zzfbuVar, zzfbxVar);
        final zzcae zza2 = zzcae.zza(zza);
        zzdnv zzb = zzdlwVar.zzl.zzb();
        zzcgt zzN = zza.zzN();
        zzbcm zzbcmVar = zzbcv.zznG;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzbVar2 = new com.google.android.gms.ads.internal.zzb(zzdlwVar.zza, null, null);
        } else {
            zzbVar2 = zzbVar;
        }
        if (true != ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzbxvVar2 = null;
        } else {
            zzbxvVar2 = zzbxvVar;
        }
        zzN.zzX(zzb, zzb, zzb, zzb, zzb, false, null, zzbVar2, null, zzbxvVar2, zzdlwVar.zzo, zzdlwVar.zzn, zzdlwVar.zzm, null, zzb, null, null, null, null);
        zza.zzag("/getNativeAdViewSignals", zzbjv.zzs);
        zza.zzag("/getNativeClickMeta", zzbjv.zzt);
        zza.zzN().zzG(true);
        zza.zzN().zzC(new zzcgr() { // from class: com.google.android.gms.internal.ads.zzdls
            @Override // com.google.android.gms.internal.ads.zzcgr
            public final void zza(boolean z, int i, String str3, String str4) {
                zzcae zzcaeVar = zzcae.this;
                if (z) {
                    zzcaeVar.zzb();
                    return;
                }
                zzcaeVar.zzd(new zzegy(1, "Image Web View failed to load. Error code: " + i + ", Description: " + str3 + ", Failing URL: " + str4));
            }
        });
        zza.zzae(str, str2, null);
        return zza2;
    }

    @Nullable
    public static final com.google.android.gms.ads.internal.client.zzev zzk(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject(CampaignEx.JSON_NATIVE_VIDEO_MUTE);
        if (optJSONObject2 != null && (optJSONObject = optJSONObject2.optJSONObject("default_reason")) != null) {
            return zzt(optJSONObject);
        }
        return null;
    }

    public static final List zzl(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject(CampaignEx.JSON_NATIVE_VIDEO_MUTE);
        if (optJSONObject == null) {
            return zzfyc.zzn();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                com.google.android.gms.ads.internal.client.zzev zzt = zzt(optJSONArray.optJSONObject(i));
                if (zzt != null) {
                    arrayList.add(zzt);
                }
            }
            return zzfyc.zzl(arrayList);
        }
        return zzfyc.zzn();
    }

    private final com.google.android.gms.ads.internal.client.zzr zzm(int i, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                i = 0;
            } else {
                return com.google.android.gms.ads.internal.client.zzr.zzc();
            }
        }
        return new com.google.android.gms.ads.internal.client.zzr(this.zza, new AdSize(i, i2));
    }

    private static ListenableFuture zzn(ListenableFuture listenableFuture, Object obj) {
        return zzgcy.zzf(listenableFuture, Exception.class, new zzgcf(null) { // from class: com.google.android.gms.internal.ads.zzdlo
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj2) {
                com.google.android.gms.ads.internal.util.zze.zzb("Error during loading assets.", (Exception) obj2);
                return zzgcy.zzh(null);
            }
        }, zzcaa.zzg);
    }

    private static ListenableFuture zzo(boolean z, final ListenableFuture listenableFuture, Object obj) {
        if (z) {
            return zzgcy.zzn(listenableFuture, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdlq
                @Override // com.google.android.gms.internal.ads.zzgcf
                public final ListenableFuture zza(Object obj2) {
                    if (obj2 != null) {
                        return ListenableFuture.this;
                    }
                    return zzgcy.zzg(new zzegy(1, "Retrieve required value in native ad response failed."));
                }
            }, zzcaa.zzg);
        }
        return zzn(listenableFuture, null);
    }

    private final ListenableFuture zzp(@Nullable JSONObject jSONObject, boolean z, @Nullable zzdrl zzdrlVar) {
        if (jSONObject == null) {
            return zzgcy.zzh(null);
        }
        final String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return zzgcy.zzh(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue() && zzdrlVar != null) {
            this.zzr.zza().putLong(zzdrlVar.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt("width", -1);
        final int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return zzgcy.zzh(new zzbft(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return zzo(jSONObject.optBoolean("require"), zzgcy.zzm(this.zzb.zzb(optString, optDouble, optBoolean), new zzfur() { // from class: com.google.android.gms.internal.ads.zzdlm
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return new zzbft(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(optString), optDouble, optInt, optInt2);
            }
        }, this.zzg), null);
    }

    private final ListenableFuture zzq(@Nullable JSONArray jSONArray, boolean z, boolean z2, zzdrl zzdrlVar) {
        int i;
        if (jSONArray != null && jSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            if (z2) {
                i = jSONArray.length();
            } else {
                i = 1;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue()) {
                this.zzr.zza().putLong(zzdrlVar.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
            }
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(zzp(jSONArray.optJSONObject(i2), z, null));
            }
            return zzgcy.zzm(zzgcy.zzd(arrayList), new zzfur() { // from class: com.google.android.gms.internal.ads.zzdlj
                @Override // com.google.android.gms.internal.ads.zzfur
                public final Object apply(Object obj) {
                    ArrayList arrayList2 = new ArrayList();
                    for (zzbft zzbftVar : (List) obj) {
                        if (zzbftVar != null) {
                            arrayList2.add(zzbftVar);
                        }
                    }
                    return arrayList2;
                }
            }, this.zzg);
        }
        return zzgcy.zzh(Collections.EMPTY_LIST);
    }

    private final ListenableFuture zzr(JSONObject jSONObject, zzfbu zzfbuVar, zzfbx zzfbxVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbxv zzbxvVar) {
        final ListenableFuture zze = this.zzi.zze(jSONObject.optString("base_url"), jSONObject.optString("html"), zzfbuVar, zzfbxVar, zzm(jSONObject.optInt("width", 0), jSONObject.optInt("height", 0)), zzbVar, zzbxvVar);
        return zzgcy.zzn(zze, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdlp
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                zzcfb zzcfbVar = (zzcfb) obj;
                if (zzcfbVar != null && zzcfbVar.zzq() != null) {
                    return ListenableFuture.this;
                }
                throw new zzegy(1, "Retrieve video view in html5 ad response failed.");
            }
        }, zzcaa.zzg);
    }

    @Nullable
    private static Integer zzs(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)));
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    private static final com.google.android.gms.ads.internal.client.zzev zzt(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            String optString = jSONObject.optString("reason");
            String optString2 = jSONObject.optString("ping_url");
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                return new com.google.android.gms.ads.internal.client.zzev(optString, optString2);
            }
            return null;
        }
        return null;
    }

    public final ListenableFuture zzd(JSONObject jSONObject, String str, zzdrl zzdrlVar) {
        final JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return zzgcy.zzh(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        if (optJSONArray == null && optJSONObject2 != null) {
            optJSONArray = new JSONArray();
            optJSONArray.put(optJSONObject2);
        }
        return zzo(optJSONObject.optBoolean("require"), zzgcy.zzm(zzq(optJSONArray, false, true, zzdrlVar), new zzfur() { // from class: com.google.android.gms.internal.ads.zzdlr
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return zzdlw.zza(zzdlw.this, optJSONObject, (List) obj);
            }
        }, this.zzg), null);
    }

    public final ListenableFuture zze(JSONObject jSONObject, String str, @Nullable zzdrl zzdrlVar) {
        return zzp(jSONObject.optJSONObject(str), this.zzh.zzb, zzdrlVar);
    }

    public final ListenableFuture zzf(JSONObject jSONObject, String str, zzdrl zzdrlVar) {
        zzbfv zzbfvVar = this.zzh;
        return zzq(jSONObject.optJSONArray("images"), zzbfvVar.zzb, zzbfvVar.zzd, zzdrlVar);
    }

    public final ListenableFuture zzg(JSONObject jSONObject, String str, final zzfbu zzfbuVar, final zzfbx zzfbxVar, @Nullable final com.google.android.gms.ads.internal.zzb zzbVar, @Nullable final zzbxv zzbxvVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzko)).booleanValue()) {
            return zzgcy.zzh(null);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(0);
            if (optJSONObject == null) {
                return zzgcy.zzh(null);
            }
            final String optString = optJSONObject.optString("base_url");
            final String optString2 = optJSONObject.optString("html");
            final com.google.android.gms.ads.internal.client.zzr zzm = zzm(optJSONObject.optInt("width", 0), optJSONObject.optInt("height", 0));
            if (!TextUtils.isEmpty(optString2)) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue()) {
                    this.zzr.zza().putLong(zzdrl.NATIVE_ASSETS_LOADING_IMAGE_COMPOSITION_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
                }
                final ListenableFuture zzn = zzgcy.zzn(zzgcy.zzh(null), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdlt
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        return zzdlw.zzc(zzdlw.this, zzm, zzfbuVar, zzfbxVar, zzbVar, zzbxvVar, optString, optString2, obj);
                    }
                }, zzcaa.zzf);
                return zzgcy.zzn(zzn, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdlk
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        if (((zzcfb) obj) != null) {
                            return ListenableFuture.this;
                        }
                        throw new zzegy(1, "Retrieve Web View from image ad response failed.");
                    }
                }, zzcaa.zzg);
            }
            return zzgcy.zzh(null);
        }
        return zzgcy.zzh(null);
    }

    public final ListenableFuture zzh(ListenableFuture listenableFuture) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue()) {
            this.zzr.zza().putLong(zzdrl.NATIVE_ASSETS_LOADING_MEDIA_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzcaf zzcafVar = new zzcaf();
        zzgcy.zzr(listenableFuture, new zzdlv(this, zzcafVar), zzcaa.zzf);
        return zzcafVar;
    }

    public final ListenableFuture zzi(JSONObject jSONObject, @Nullable final com.google.android.gms.ads.internal.zzb zzbVar, @Nullable final zzbxv zzbxvVar) {
        if (!jSONObject.optBoolean("enable_omid")) {
            return zzgcy.zzh(null);
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
        if (optJSONObject == null) {
            return zzgcy.zzh(null);
        }
        final String optString = optJSONObject.optString("omid_html");
        if (TextUtils.isEmpty(optString)) {
            return zzgcy.zzh(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue()) {
            this.zzr.zza().putLong(zzdrl.NATIVE_ASSETS_LOADING_OMID_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        return zzgcy.zzn(zzgcy.zzh(null), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdll
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzdlw.zzb(zzdlw.this, optString, zzbxvVar, zzbVar, obj);
            }
        }, zzcaa.zzf);
    }

    public final ListenableFuture zzj(JSONObject jSONObject, zzfbu zzfbuVar, zzfbx zzfbxVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbxv zzbxvVar) {
        ListenableFuture zzd;
        zzdlw zzdlwVar;
        JSONObject zzh = com.google.android.gms.ads.internal.util.zzbs.zzh(jSONObject, "html_containers", "instream");
        if (zzh == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject == null) {
                return zzgcy.zzh(null);
            }
            String optString = optJSONObject.optString("vast_xml");
            boolean z = false;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkn)).booleanValue() && optJSONObject.has("html")) {
                z = true;
            }
            if (TextUtils.isEmpty(optString)) {
                if (!z) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Required field 'vast_xml' or 'html' is missing");
                    return zzgcy.zzh(null);
                }
            } else if (!z) {
                zzd = this.zzi.zzd(optJSONObject, zzbVar, zzbxvVar);
                zzdlwVar = this;
                zzbcm zzbcmVar = zzbcv.zzec;
                return zzn(zzgcy.zzo(zzd, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).intValue(), TimeUnit.SECONDS, zzdlwVar.zzk), null);
            }
            zzdlwVar = this;
            zzd = zzdlwVar.zzr(optJSONObject, zzfbuVar, zzfbxVar, zzbVar, zzbxvVar);
            zzbcm zzbcmVar2 = zzbcv.zzec;
            return zzn(zzgcy.zzo(zzd, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar2)).intValue(), TimeUnit.SECONDS, zzdlwVar.zzk), null);
        }
        return zzr(zzh, zzfbuVar, zzfbxVar, zzbVar, zzbxvVar);
    }
}
