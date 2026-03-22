package com.google.android.gms.ads.internal.util;

import android.content.SharedPreferences;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzca implements SharedPreferences.OnSharedPreferenceChangeListener {
    final /* synthetic */ zzcb zza;
    private final String zzb;

    public zzca(zzcb zzcbVar, String str) {
        this.zza = zzcbVar;
        this.zzb = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        List<zzbz> list;
        zzcb zzcbVar = this.zza;
        synchronized (zzcbVar) {
            try {
                list = zzcbVar.zzb;
                for (zzbz zzbzVar : list) {
                    String str2 = this.zzb;
                    Map map = zzbzVar.zza;
                    if (map.containsKey(str2) && ((Set) map.get(str2)).contains(str)) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzi().zzE(false);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
