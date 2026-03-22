package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcfy implements zzbjw {
    final /* synthetic */ zzcga zza;

    public zzcfy(zzcga zzcgaVar) {
        this.zza = zzcgaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        int i;
        zzcfb zzcfbVar = (zzcfb) obj;
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    zzcga zzcgaVar = this.zza;
                    synchronized (zzcgaVar) {
                        i = zzcgaVar.zzI;
                        if (i != parseInt) {
                            zzcgaVar.zzI = parseInt;
                            zzcgaVar.requestLayout();
                        }
                    }
                } catch (Exception e) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzk("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
