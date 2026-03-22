package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdx {
    private static final Object zza = new Object();

    @Pure
    public static String zza(String str, @Nullable Throwable th) {
        String replace;
        if (th == null) {
            replace = null;
        } else {
            synchronized (zza) {
                Throwable th2 = th;
                while (true) {
                    if (th2 != null) {
                        try {
                            if (th2 instanceof UnknownHostException) {
                                replace = "UnknownHostException (no network)";
                            } else {
                                th2 = th2.getCause();
                            }
                        } finally {
                        }
                    } else {
                        replace = Log.getStackTraceString(th).trim().replace("\t", "    ");
                        break;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(replace)) {
            String replace2 = replace.replace("\n", "\n  ");
            return str + "\n  " + replace2 + "\n";
        }
        return str;
    }

    @Pure
    public static void zzb(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            zza(str2, null);
        }
    }

    @Pure
    public static void zzc(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            zza(str2, null);
        }
    }

    @Pure
    public static void zzd(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        synchronized (zza) {
            zza(str2, th);
        }
    }

    @Pure
    public static void zze(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            zza(str2, null);
        }
    }

    @Pure
    public static void zzf(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            zza(str2, null);
        }
    }

    @Pure
    public static void zzg(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        synchronized (zza) {
            zza(str2, th);
        }
    }
}
