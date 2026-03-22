package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbyn implements SharedPreferences.OnSharedPreferenceChangeListener {
    final /* synthetic */ zzbyo zza;
    private final String zzb;

    public zzbyn(zzbyo zzbyoVar, String str) {
        this.zza = zzbyoVar;
        this.zzb = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        List<zzbym> list;
        zzbyo zzbyoVar = this.zza;
        synchronized (zzbyoVar) {
            try {
                list = zzbyoVar.zzb;
                for (zzbym zzbymVar : list) {
                    zzbyo.zzb(zzbymVar.zza, zzbymVar.zzb, sharedPreferences, this.zzb, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
