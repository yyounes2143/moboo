package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdkk {
    private final zzdpd zza;
    private final zzdns zzb;
    private ViewTreeObserver.OnScrollChangedListener zzc = null;

    public zzdkk(zzdpd zzdpdVar, zzdns zzdnsVar) {
        this.zza = zzdpdVar;
        this.zzb = zzdnsVar;
    }

    public static /* synthetic */ void zzb(zzdkk zzdkkVar, WindowManager windowManager, View view, zzcfb zzcfbVar, Map map) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Hide native ad policy validator overlay.");
        zzcfbVar.zzF().setVisibility(8);
        if (zzcfbVar.zzF().getWindowToken() != null) {
            windowManager.removeView(zzcfbVar.zzF());
        }
        zzcfbVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (zzdkkVar.zzc != null && viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(zzdkkVar.zzc);
        }
    }

    public static /* synthetic */ void zzc(final zzdkk zzdkkVar, final View view, final WindowManager windowManager, zzcfb zzcfbVar, final Map map) {
        int i;
        final zzcfb zzcfbVar2;
        zzcfbVar.zzN().zzC(new zzcgr() { // from class: com.google.android.gms.internal.ads.zzdki
            @Override // com.google.android.gms.internal.ads.zzcgr
            public final void zza(boolean z, int i2, String str, String str2) {
                zzdkk.zzd(zzdkk.this, map, z, i2, str, str2);
            }
        });
        if (map != null) {
            Context context = view.getContext();
            int zzf = zzf(context, (String) map.get("validator_width"), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziq)).intValue());
            int zzf2 = zzf(context, (String) map.get("validator_height"), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzir)).intValue());
            int zzf3 = zzf(context, (String) map.get("validator_x"), 0);
            int zzf4 = zzf(context, (String) map.get("validator_y"), 0);
            zzcfbVar.zzaj(zzcgv.zzb(zzf, zzf2));
            try {
                zzcfbVar.zzG().getSettings().setUseWideViewPort(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzis)).booleanValue());
                zzcfbVar.zzG().getSettings().setLoadWithOverviewMode(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzit)).booleanValue());
            } catch (NullPointerException unused) {
            }
            final WindowManager.LayoutParams zzb = com.google.android.gms.ads.internal.util.zzbv.zzb();
            zzb.x = zzf3;
            zzb.y = zzf4;
            windowManager.updateViewLayout(zzcfbVar.zzF(), zzb);
            final String str = (String) map.get("orientation");
            Rect rect = new Rect();
            if (!view.getGlobalVisibleRect(rect)) {
                zzcfbVar2 = zzcfbVar;
            } else {
                if (!"1".equals(str) && !"2".equals(str)) {
                    i = rect.top;
                } else {
                    i = rect.bottom;
                }
                final int i2 = i - zzf4;
                zzcfbVar2 = zzcfbVar;
                zzdkkVar.zzc = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdkj
                    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                    public final void onScrollChanged() {
                        Rect rect2 = new Rect();
                        if (view.getGlobalVisibleRect(rect2)) {
                            zzcfb zzcfbVar3 = zzcfbVar2;
                            if (zzcfbVar3.zzF().getWindowToken() != null) {
                                int i3 = i2;
                                WindowManager.LayoutParams layoutParams = zzb;
                                String str2 = str;
                                if (!"1".equals(str2) && !"2".equals(str2)) {
                                    layoutParams.y = rect2.top - i3;
                                } else {
                                    layoutParams.y = rect2.bottom - i3;
                                }
                                windowManager.updateViewLayout(zzcfbVar3.zzF(), layoutParams);
                            }
                        }
                    }
                };
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnScrollChangedListener(zzdkkVar.zzc);
                }
            }
            String str2 = (String) map.get("overlay_url");
            if (!TextUtils.isEmpty(str2)) {
                zzcfbVar2.loadUrl(str2);
            }
        }
    }

    public static /* synthetic */ void zzd(zzdkk zzdkkVar, Map map, boolean z, int i, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        zzdkkVar.zzb.zzj("sendMessageToNativeJs", hashMap);
    }

    private static final int zzf(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        return com.google.android.gms.ads.internal.util.client.zzf.zzy(context, i);
    }

    public final View zza(@NonNull final View view, @NonNull final WindowManager windowManager) throws zzcfn {
        zzcfb zza = this.zza.zza(com.google.android.gms.ads.internal.client.zzr.zzc(), null, null);
        zza.zzF().setVisibility(4);
        zza.zzF().setContentDescription("policy_validator");
        zza.zzag("/sendMessageToSdk", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdke
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzcfb zzcfbVar = (zzcfb) obj;
                zzdkk.this.zzb.zzj("sendMessageToNativeJs", map);
            }
        });
        zza.zzag("/hideValidatorOverlay", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdkf
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzdkk.zzb(zzdkk.this, windowManager, view, (zzcfb) obj, map);
            }
        });
        zza.zzag("/open", new zzbki(null, null, null, null, null));
        WeakReference weakReference = new WeakReference(zza);
        zzbjw zzbjwVar = new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdkg
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzdkk.zzc(zzdkk.this, view, windowManager, (zzcfb) obj, map);
            }
        };
        zzdns zzdnsVar = this.zzb;
        zzdnsVar.zzm(weakReference, "/loadNativeAdPolicyViolations", zzbjwVar);
        zzdnsVar.zzm(new WeakReference(zza), "/showValidatorOverlay", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdkh
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Show native ad policy validator overlay.");
                ((zzcfb) obj).zzF().setVisibility(0);
            }
        });
        return zza.zzF();
    }
}
