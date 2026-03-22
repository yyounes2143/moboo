package com.google.android.gms.ads.nonagon.signalgeneration;

import android.webkit.WebView;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbef;
import com.google.android.gms.internal.ads.zzbfa;
import com.google.android.gms.internal.ads.zzgdj;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbu extends QueryInfoGenerationCallback {
    final /* synthetic */ String zza;
    final /* synthetic */ TaggingLibraryJsInterface zzb;

    public zzbu(TaggingLibraryJsInterface taggingLibraryJsInterface, String str) {
        this.zza = str;
        this.zzb = taggingLibraryJsInterface;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        String str2;
        long j;
        zzgdj zzgdjVar;
        zzj zzjVar;
        WebView webView;
        zzf zzfVar;
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to generate query info for the tagging library, error: ".concat(String.valueOf(str)));
        if (((Boolean) zzbfa.zzc.zze()).booleanValue()) {
            zzfVar = this.zzb.zzk;
            str2 = ",\"as\":".concat(zzfVar.zza().toString());
        } else {
            str2 = "";
        }
        String str3 = this.zza;
        Locale locale = Locale.getDefault();
        zzbef zzbefVar = zzbfa.zze;
        if (((Boolean) zzbefVar.zze()).booleanValue()) {
            j = ((Long) zzbfa.zzh.zze()).longValue();
        } else {
            j = 0;
        }
        final String format = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"error\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", str3, str, Long.valueOf(j), str2);
        if (((Boolean) zzbefVar.zze()).booleanValue()) {
            try {
                zzgdjVar = this.zzb.zzh;
                zzgdjVar.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbs
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebView webView2;
                        webView2 = zzbu.this.zzb.zzb;
                        webView2.evaluateJavascript(format, null);
                    }
                });
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "TaggingLibraryJsInterface.getQueryInfo.onFailure");
            }
        } else {
            webView = this.zzb.zzb;
            webView.evaluateJavascript(format, null);
        }
        if (((Boolean) zzbfa.zzc.zze()).booleanValue() && ((Boolean) zzbfa.zzd.zze()).booleanValue()) {
            zzjVar = this.zzb.zzl;
            zzjVar.zzb();
        }
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        String str;
        final String format;
        zzf zzfVar;
        zzgdj zzgdjVar;
        zzj zzjVar;
        WebView webView;
        long j;
        zzf zzfVar2;
        String query = queryInfo.getQuery();
        long j2 = 0;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("paw_id", this.zza);
            if (((Boolean) zzbfa.zzc.zze()).booleanValue()) {
                zzfVar2 = this.zzb.zzk;
                jSONObject.put("as", zzfVar2.zza());
            }
            if (((Boolean) zzbfa.zze.zze()).booleanValue()) {
                j = ((Long) zzbfa.zzh.zze()).longValue();
            } else {
                j = 0;
            }
            jSONObject.put("sdk_ttl_ms", j);
            jSONObject.put("signal", query);
            format = String.format(Locale.getDefault(), "window.postMessage(%1$s, '*');", jSONObject);
        } catch (JSONException unused) {
            if (((Boolean) zzbfa.zzc.zze()).booleanValue()) {
                zzfVar = this.zzb.zzk;
                str = ",\"as\":".concat(zzfVar.zza().toString());
            } else {
                str = "";
            }
            String str2 = this.zza;
            Locale locale = Locale.getDefault();
            String query2 = queryInfo.getQuery();
            if (((Boolean) zzbfa.zze.zze()).booleanValue()) {
                j2 = ((Long) zzbfa.zzh.zze()).longValue();
            }
            format = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"signal\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", str2, query2, Long.valueOf(j2), str);
        }
        if (((Boolean) zzbfa.zze.zze()).booleanValue()) {
            try {
                zzgdjVar = this.zzb.zzh;
                zzgdjVar.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbt
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebView webView2;
                        webView2 = zzbu.this.zzb.zzb;
                        webView2.evaluateJavascript(format, null);
                    }
                });
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "TaggingLibraryJsInterface.getQueryInfo.onSuccess");
            }
        } else {
            webView = this.zzb.zzb;
            webView.evaluateJavascript(format, null);
        }
        if (((Boolean) zzbfa.zzc.zze()).booleanValue() && ((Boolean) zzbfa.zzd.zze()).booleanValue()) {
            zzjVar = this.zzb.zzl;
            zzjVar.zzb();
        }
    }
}
