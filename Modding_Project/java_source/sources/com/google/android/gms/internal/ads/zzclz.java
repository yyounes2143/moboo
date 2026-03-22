package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzclz implements zzcld {
    @Nullable
    private final CookieManager zza;

    public zzclz(Context context) {
        this.zza = com.google.android.gms.ads.internal.zzv.zzs().zza(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcld
    public final void zza(Map map) {
        CookieManager cookieManager = this.zza;
        if (cookieManager != null) {
            if (((String) map.get("clear")) != null) {
                String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbc);
                String cookie = cookieManager.getCookie(str);
                if (cookie != null) {
                    List zzf = zzfvr.zzb(zzfun.zzc(';')).zzf(cookie);
                    for (int i = 0; i < zzf.size(); i++) {
                        Iterator it = zzfvr.zzb(zzfun.zzc('=')).zzd((String) zzf.get(i)).iterator();
                        it.getClass();
                        if (it.hasNext()) {
                            cookieManager.setCookie(str, String.valueOf((String) it.next()).concat(String.valueOf((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaO))));
                        } else {
                            throw new IndexOutOfBoundsException("position (0) must be less than the number of elements that remained (0)");
                        }
                    }
                    return;
                }
                return;
            }
            String str2 = (String) map.get("cookie");
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            cookieManager.setCookie((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbc), str2);
        }
    }
}
