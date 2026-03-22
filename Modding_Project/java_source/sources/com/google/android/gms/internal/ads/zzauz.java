package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Base64;
import androidx.annotation.NonNull;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzauz {
    public static final String zza(@NonNull Context context, @NonNull String str, long j, boolean z) {
        try {
            zzatq zza = zzatr.zza();
            zza.zzb(str);
            zza.zza("0.460000000");
            zza.zzc(context.getPackageName());
            zza.zze((System.currentTimeMillis() - j) / 1000);
            zza.zzd(System.currentTimeMillis() / 1000);
            try {
                zza.zzf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
                zza.zzf(-1L);
            }
            zzatx zza2 = zzauj.zza(((zzatr) zza.zzbr()).zzaV(), null);
            zza2.zzd(5);
            zza2.zzc(2);
            return Base64.encodeToString(((zzaty) zza2.zzbr()).zzaV(), 11);
        } catch (UnsupportedEncodingException | GeneralSecurityException unused2) {
            return Integer.toString(7);
        }
    }
}
