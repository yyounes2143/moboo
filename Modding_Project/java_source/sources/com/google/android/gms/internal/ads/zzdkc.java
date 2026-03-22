package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdkc {
    private final zzdpd zza;
    private final zzdns zzb;
    private final zzcnu zzc;
    private final zzdiw zzd;

    public zzdkc(zzdpd zzdpdVar, zzdns zzdnsVar, zzcnu zzcnuVar, zzdiw zzdiwVar) {
        this.zza = zzdpdVar;
        this.zzb = zzdnsVar;
        this.zzc = zzcnuVar;
        this.zzd = zzdiwVar;
    }

    public static /* synthetic */ void zzb(zzdkc zzdkcVar, zzcfb zzcfbVar, Map map) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Hiding native ads overlay.");
        zzcfbVar.zzF().setVisibility(8);
        zzdkcVar.zzc.zze(false);
    }

    public static /* synthetic */ void zzd(zzdkc zzdkcVar, zzcfb zzcfbVar, Map map) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Showing native ads overlay.");
        zzcfbVar.zzF().setVisibility(0);
        zzdkcVar.zzc.zze(true);
    }

    public static /* synthetic */ void zze(zzdkc zzdkcVar, Map map, boolean z, int i, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        zzdkcVar.zzb.zzj("sendMessageToNativeJs", hashMap);
    }

    public final View zza() throws zzcfn {
        zzcfb zza = this.zza.zza(com.google.android.gms.ads.internal.client.zzr.zzc(), null, null);
        zza.zzF().setVisibility(8);
        zza.zzag("/sendMessageToSdk", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdjw
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzcfb zzcfbVar = (zzcfb) obj;
                zzdkc.this.zzb.zzj("sendMessageToNativeJs", map);
            }
        });
        zza.zzag("/adMuted", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdjx
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzcfb zzcfbVar = (zzcfb) obj;
                zzdkc.this.zzd.zzi();
            }
        });
        WeakReference weakReference = new WeakReference(zza);
        zzbjw zzbjwVar = new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdjy
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, final Map map) {
                zzcfb zzcfbVar = (zzcfb) obj;
                zzcgt zzN = zzcfbVar.zzN();
                final zzdkc zzdkcVar = zzdkc.this;
                zzN.zzC(new zzcgr() { // from class: com.google.android.gms.internal.ads.zzdkb
                    @Override // com.google.android.gms.internal.ads.zzcgr
                    public final void zza(boolean z, int i, String str, String str2) {
                        zzdkc.zze(zzdkc.this, map, z, i, str, str2);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzcfbVar.loadData(str, "text/html", "UTF-8");
                } else {
                    zzcfbVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        };
        zzdns zzdnsVar = this.zzb;
        zzdnsVar.zzm(weakReference, "/loadHtml", zzbjwVar);
        zzdnsVar.zzm(new WeakReference(zza), "/showOverlay", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdjz
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzdkc.zzd(zzdkc.this, (zzcfb) obj, map);
            }
        });
        zzdnsVar.zzm(new WeakReference(zza), "/hideOverlay", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdka
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzdkc.zzb(zzdkc.this, (zzcfb) obj, map);
            }
        });
        return zza.zzF();
    }
}
