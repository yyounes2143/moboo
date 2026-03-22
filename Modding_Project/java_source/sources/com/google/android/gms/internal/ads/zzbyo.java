package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.annotation.GuardedBy;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbyo {
    @GuardedBy("this")
    private final Map zza = new HashMap();
    @GuardedBy("this")
    private final List zzb = new ArrayList();
    private final Context zzc;
    private final zzbya zzd;

    public zzbyo(Context context, zzbya zzbyaVar) {
        this.zzc = context;
        this.zzd = zzbyaVar;
    }

    public static /* synthetic */ void zzb(zzbyo zzbyoVar, Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            zzbyoVar.zzd.zzd();
        }
    }

    public final synchronized void zzc(String str) {
        SharedPreferences sharedPreferences;
        try {
            Map map = this.zza;
            if (map.containsKey(str)) {
                return;
            }
            if (Objects.equals(str, "__default__")) {
                sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.zzc);
            } else {
                sharedPreferences = this.zzc.getSharedPreferences(str, 0);
            }
            zzbyn zzbynVar = new zzbyn(this, str);
            map.put(str, zzbynVar);
            sharedPreferences.registerOnSharedPreferenceChangeListener(zzbynVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzd(zzbym zzbymVar) {
        this.zzb.add(zzbymVar);
    }
}
