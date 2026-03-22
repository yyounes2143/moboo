package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdxu {
    private static final Pattern zza = Pattern.compile("\\?");
    private final zzchb zzb;
    private final Context zzc;
    private final VersionInfoParcel zzd;
    private final zzfcp zze;
    private final Executor zzf;
    private final ScheduledExecutorService zzg;
    private final String zzh;
    private final zzfhn zzi;
    private final zzdrx zzj;
    private final zzfjr zzk;
    private final zzcyt zzl;
    private final Object zzm = new Object();
    private String zzn;
    private List zzo;
    @Nullable
    private Bundle zzp;
    private final zzbvt zzq;

    public zzdxu(zzchb zzchbVar, Context context, VersionInfoParcel versionInfoParcel, zzfcp zzfcpVar, Executor executor, String str, zzfhn zzfhnVar, zzdrx zzdrxVar, zzbvt zzbvtVar, zzdzz zzdzzVar, ScheduledExecutorService scheduledExecutorService, zzfjr zzfjrVar, zzcyt zzcytVar) {
        this.zzb = zzchbVar;
        this.zzc = context;
        this.zzd = versionInfoParcel;
        this.zze = zzfcpVar;
        this.zzf = executor;
        this.zzh = str;
        this.zzi = zzfhnVar;
        zzchbVar.zzw();
        this.zzj = zzdrxVar;
        this.zzq = zzbvtVar;
        this.zzg = scheduledExecutorService;
        this.zzk = zzfjrVar;
        this.zzl = zzcytVar;
    }

    public static /* synthetic */ ListenableFuture zzb(zzdxu zzdxuVar, List list, Exception exc) {
        String message;
        zzegy zzegyVar;
        String message2;
        com.google.android.gms.ads.internal.zzv.zzp().zzv(exc, "PreloadedLoader.getTypeTwoAdResponseString");
        if (exc instanceof TimeoutException) {
            zzegyVar = new zzegy(1, "Timed out waiting for ad response.");
        } else if (exc instanceof zzegy) {
            zzegyVar = (zzegy) exc;
        } else {
            if (exc.getMessage() == null) {
                message = "Fetch failed.";
            } else {
                message = exc.getMessage();
            }
            zzegyVar = new zzegy(1, message);
        }
        if (zzegyVar.getMessage() == null) {
            message2 = "";
        } else {
            message2 = zzegyVar.getMessage();
        }
        if (list != null && !list.isEmpty()) {
            String str = "0.6.0.0";
            if (!TextUtils.isEmpty(message2)) {
                if (message2.contains("Timed out waiting for ad response.")) {
                    message2 = "timeout";
                    str = "0.2.0.0";
                } else if (message2.contains("Received HTTP error code from ad server:")) {
                    List zzf = zzfvr.zzb(zzfun.zzc(AbstractJsonLexerKt.COLON)).zzf(message2);
                    if (zzf.size() == 2) {
                        message2 = (String) zzf.get(1);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zzfjn.zzc(zzfjn.zzc((String) it.next(), "@gw_adnetstatus@", str), "@error_code@", message2));
            }
            zzdxuVar.zzk.zze(arrayList, null);
        }
        return zzgcy.zzg(zzegyVar);
    }

    public static /* synthetic */ ListenableFuture zzc(zzdxu zzdxuVar, JSONObject jSONObject) {
        zzfcd zzfcdVar = new zzfcd(zzdxuVar.zze);
        String jSONObject2 = jSONObject.toString();
        return zzgcy.zzh(new zzfcg(zzfcdVar, zzfcf.zza(new StringReader(jSONObject2), zzdxuVar.zzp)));
    }

    public static /* synthetic */ ListenableFuture zzd(zzdxu zzdxuVar, zzbod zzbodVar, JSONObject jSONObject) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcs)).booleanValue()) {
            zzdxuVar.zzj.zza().putLong(zzdrl.SCAR_PRELOADER_PROCESSING_DONE.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        return zzbodVar.zzb(jSONObject);
    }

    public static /* synthetic */ String zzf(zzdxu zzdxuVar, zzdzw zzdzwVar) {
        String message;
        zzdxuVar.zzi(zzdrl.RENDERING_ADSTRING_TYPE2_FETCH_START);
        int i = 0;
        int i2 = -1;
        while (true) {
            try {
                if (i < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhp)).intValue()) {
                    zzdzx zza2 = new zzdzy(zzdxuVar.zzc, zzdxuVar.zzd.afmaVersion, zzdxuVar.zzq, Binder.getCallingUid()).zza(zzdzwVar);
                    int i3 = zza2.zza;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhq)).booleanValue()) {
                        zzdxuVar.zzj.zzd("fr", String.valueOf(i));
                    }
                    if (i3 == 200) {
                        zzdxuVar.zzi(zzdrl.RENDERING_ADSTRING_TYPE2_FETCH_END);
                        return zza2.zzc;
                    }
                    i++;
                    i2 = i3;
                } else {
                    throw new zzegy(1, "Received HTTP error code from ad server:" + i2);
                }
            } catch (Exception e) {
                if (e.getMessage() == null) {
                    message = "Fetch failed.";
                } else {
                    message = e.getMessage();
                }
                throw new zzegy(1, message, e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x013e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.common.util.concurrent.ListenableFuture zzg(@androidx.annotation.Nullable java.lang.String r18, final java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdxu.zzg(java.lang.String, java.lang.String):com.google.common.util.concurrent.ListenableFuture");
    }

    private final String zzh(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.zzh));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            String concat = "Failed to update the ad types for rendering. ".concat(e.toString());
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(concat);
            return str;
        }
    }

    private final void zzi(zzdrl zzdrlVar) {
        Bundle zza2 = this.zzj.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhq)).booleanValue()) {
            zza2.putLong(zzdrlVar.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
    }

    private static final String zzj(String str) {
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00fc, code lost:
        if (r2.optString("is_gbid").equals("true") == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x022b, code lost:
        if (r5.zzg(r1, r2, r4) == false) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01e9 A[Catch: all -> 0x00ed, TryCatch #6 {all -> 0x00ed, blocks: (B:21:0x0080, B:23:0x009e, B:25:0x00a4, B:27:0x00bb, B:29:0x00c3, B:37:0x0100, B:39:0x0108, B:41:0x010e, B:45:0x0117, B:56:0x0151, B:48:0x0129, B:55:0x013a, B:58:0x0156, B:34:0x00f0, B:59:0x016c, B:66:0x0185, B:69:0x018d, B:73:0x01b1, B:75:0x01c6, B:79:0x01e9, B:81:0x01fe, B:84:0x0212, B:86:0x0218, B:87:0x0225, B:89:0x0227, B:92:0x0230, B:91:0x022d, B:80:0x01f3, B:76:0x01d9, B:72:0x019b, B:63:0x0175, B:64:0x017a), top: B:125:0x0080, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f3 A[Catch: all -> 0x00ed, TryCatch #6 {all -> 0x00ed, blocks: (B:21:0x0080, B:23:0x009e, B:25:0x00a4, B:27:0x00bb, B:29:0x00c3, B:37:0x0100, B:39:0x0108, B:41:0x010e, B:45:0x0117, B:56:0x0151, B:48:0x0129, B:55:0x013a, B:58:0x0156, B:34:0x00f0, B:59:0x016c, B:66:0x0185, B:69:0x018d, B:73:0x01b1, B:75:0x01c6, B:79:0x01e9, B:81:0x01fe, B:84:0x0212, B:86:0x0218, B:87:0x0225, B:89:0x0227, B:92:0x0230, B:91:0x022d, B:80:0x01f3, B:76:0x01d9, B:72:0x019b, B:63:0x0175, B:64:0x017a), top: B:125:0x0080, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0218 A[Catch: all -> 0x00ed, TryCatch #6 {all -> 0x00ed, blocks: (B:21:0x0080, B:23:0x009e, B:25:0x00a4, B:27:0x00bb, B:29:0x00c3, B:37:0x0100, B:39:0x0108, B:41:0x010e, B:45:0x0117, B:56:0x0151, B:48:0x0129, B:55:0x013a, B:58:0x0156, B:34:0x00f0, B:59:0x016c, B:66:0x0185, B:69:0x018d, B:73:0x01b1, B:75:0x01c6, B:79:0x01e9, B:81:0x01fe, B:84:0x0212, B:86:0x0218, B:87:0x0225, B:89:0x0227, B:92:0x0230, B:91:0x022d, B:80:0x01f3, B:76:0x01d9, B:72:0x019b, B:63:0x0175, B:64:0x017a), top: B:125:0x0080, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0227 A[Catch: all -> 0x00ed, TryCatch #6 {all -> 0x00ed, blocks: (B:21:0x0080, B:23:0x009e, B:25:0x00a4, B:27:0x00bb, B:29:0x00c3, B:37:0x0100, B:39:0x0108, B:41:0x010e, B:45:0x0117, B:56:0x0151, B:48:0x0129, B:55:0x013a, B:58:0x0156, B:34:0x00f0, B:59:0x016c, B:66:0x0185, B:69:0x018d, B:73:0x01b1, B:75:0x01c6, B:79:0x01e9, B:81:0x01fe, B:84:0x0212, B:86:0x0218, B:87:0x0225, B:89:0x0227, B:92:0x0230, B:91:0x022d, B:80:0x01f3, B:76:0x01d9, B:72:0x019b, B:63:0x0175, B:64:0x017a), top: B:125:0x0080, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0238  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture zze() {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdxu.zze():com.google.common.util.concurrent.ListenableFuture");
    }
}
