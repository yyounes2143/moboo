package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.IOException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfrr {
    private static zzfrr zza;
    private final String zzb;
    private final SharedPreferences zzc;

    private zzfrr(Context context) {
        this.zzb = context.getPackageName();
        this.zzc = context.getSharedPreferences("paid_storage_sp", 0);
    }

    public static zzfrr zzb(Context context) {
        if (zza == null) {
            zza = new zzfrr(context);
        }
        return zza;
    }

    public final long zza(String str, long j) {
        return this.zzc.getLong(str, -1L);
    }

    @Nullable
    public final String zzc(String str, String str2) {
        return this.zzc.getString(str, null);
    }

    public final void zzd(String str, Object obj) throws IOException {
        boolean commit;
        if (obj instanceof String) {
            commit = this.zzc.edit().putString(str, (String) obj).commit();
        } else if (obj instanceof Long) {
            commit = this.zzc.edit().putLong(str, ((Long) obj).longValue()).commit();
        } else if (obj instanceof Boolean) {
            commit = this.zzc.edit().putBoolean(str, ((Boolean) obj).booleanValue()).commit();
        } else if (obj instanceof Integer) {
            commit = this.zzc.edit().putInt(str, ((Integer) obj).intValue()).commit();
        } else {
            String.valueOf(obj.getClass());
            String str2 = this.zzb;
            throw new IOException("Failed to store " + str + " for app " + str2);
        }
        if (commit) {
            return;
        }
        String str22 = this.zzb;
        throw new IOException("Failed to store " + str + " for app " + str22);
    }

    public final void zze(String str) throws IOException {
        if (this.zzc.edit().remove(str).commit()) {
            return;
        }
        String str2 = this.zzb;
        throw new IOException("Failed to remove " + str + " for app " + str2);
    }

    public final boolean zzf(String str, boolean z) {
        return this.zzc.getBoolean(str, true);
    }

    public final boolean zzg(String str) {
        return this.zzc.contains(str);
    }
}
