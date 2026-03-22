package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.webkit.WebViewFeature;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdrj implements zzcyv, zzcxh, zzcvw, zzdek {
    private final zzdrx zza;
    private final zzdsi zzb;
    private final int zzc;

    public zzdrj(zzdrx zzdrxVar, zzdsi zzdsiVar, int i) {
        this.zza = zzdrxVar;
        this.zzb = zzdsiVar;
        this.zzc = i;
    }

    private final void zzc(@Nullable Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                long j = bundle.getLong(str);
                if (j >= 0) {
                    this.zza.zzd(str, String.valueOf(j));
                }
            }
        }
    }

    private final void zzd(Bundle bundle, zzfyc zzfycVar) {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue() && bundle != null) {
            bundle.putLong(zzdrl.PUBLIC_API_CALLBACK.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
            zzdrx zzdrxVar = this.zza;
            zzdrxVar.zzc();
            String str2 = "1";
            if (bundle.containsKey("ls")) {
                if (true == bundle.getBoolean("ls")) {
                    str = "1";
                } else {
                    str = "0";
                }
                zzdrxVar.zzd("ls", str);
            }
            int size = zzfycVar.size();
            for (int i = 0; i < size; i++) {
                zzdrm zzdrmVar = (zzdrm) zzfycVar.get(i);
                long j = bundle.getLong(zzdrmVar.zza().zza(), -1L);
                long j2 = bundle.getLong(zzdrmVar.zzb().zza(), -1L);
                if (j > 0 && j2 > 0) {
                    zzdrxVar.zzd(zzdrmVar.zzc(), String.valueOf(j2 - j));
                }
            }
            zzc(bundle.getBundle("client_sig_latency_key"));
            zzc(bundle.getBundle("gms_sig_latency_key"));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhJ)).booleanValue()) {
                if (bundle.containsKey("sod_h")) {
                    if (true != bundle.getBoolean("sod_h")) {
                        str2 = "0";
                    }
                    zzdrxVar.zzd("sod_h", str2);
                }
                if (bundle.containsKey("cmr")) {
                    zzdrxVar.zzd("cmr", String.valueOf(bundle.getInt("cmr")));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final void zzdD(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzdrx zzdrxVar = this.zza;
        zzdrxVar.zzb().put("action", "ftl");
        zzdrxVar.zzd("ftl", String.valueOf(zzeVar.zza));
        zzdrxVar.zzd("ed", zzeVar.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhr)).booleanValue()) {
            zzdrxVar.zzd("emsg", zzeVar.zzb);
        }
        this.zzb.zzg(zzdrxVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdn(zzbvl zzbvlVar) {
        this.zza.zzf(zzbvlVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdo(zzfcg zzfcgVar) {
        this.zza.zze(zzfcgVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ce  */
    @Override // com.google.android.gms.internal.ads.zzdek
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(@androidx.annotation.Nullable com.google.android.gms.ads.nonagon.signalgeneration.zzbk r6) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdrj.zze(com.google.android.gms.ads.nonagon.signalgeneration.zzbk):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdek
    public final void zzf(@Nullable String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhd)).booleanValue()) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhJ)).booleanValue()) {
            this.zza.zzb().put("sgw", String.valueOf(this.zzc));
        }
        zzdrx zzdrxVar = this.zza;
        zzdrxVar.zzb().put("action", "sgf");
        zzdrxVar.zzd("sgf_reason", str);
        this.zzb.zzg(zzdrxVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzt() {
        String str;
        zzdrx zzdrxVar = this.zza;
        zzdrxVar.zzb().put("action", "loaded");
        zzd(zzdrxVar.zza(), zzdrm.zzb);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmR)).booleanValue()) {
            boolean isFeatureSupported = WebViewFeature.isFeatureSupported(WebViewFeature.MUTE_AUDIO);
            Map zzb = zzdrxVar.zzb();
            if (true != isFeatureSupported) {
                str = "0";
            } else {
                str = "1";
            }
            zzb.put("mafe", str);
        }
        this.zzb.zzg(zzdrxVar.zzb());
    }
}
