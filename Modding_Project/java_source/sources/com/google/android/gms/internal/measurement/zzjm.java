package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzjm {
    @Nullable
    @GuardedBy("DirectBootUtils.class")
    private static UserManager zza;
    private static volatile boolean zzb = !zza();

    private zzjm() {
    }

    @ChecksSdkIntAtLeast(api = 24)
    public static boolean zza() {
        if (Build.VERSION.SDK_INT >= 24) {
            return true;
        }
        return false;
    }

    public static boolean zzb(Context context) {
        if (zza() && !zzd(context)) {
            return true;
        }
        return false;
    }

    public static boolean zzc(Context context) {
        if (zza() && !zzd(context)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0039, code lost:
        if (r3.isUserRunning(android.os.Process.myUserHandle()) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003b, code lost:
        r5 = true;
     */
    @androidx.annotation.RequiresApi(24)
    @android.annotation.TargetApi(24)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zzd(android.content.Context r7) {
        /*
            boolean r0 = com.google.android.gms.internal.measurement.zzjm.zzb
            r1 = 1
            if (r0 == 0) goto L6
            return r1
        L6:
            java.lang.Class<com.google.android.gms.internal.measurement.zzjm> r0 = com.google.android.gms.internal.measurement.zzjm.class
            monitor-enter(r0)
            boolean r2 = com.google.android.gms.internal.measurement.zzjm.zzb     // Catch: java.lang.Throwable -> Lf
            if (r2 == 0) goto L11
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lf
            return r1
        Lf:
            r7 = move-exception
            goto L4c
        L11:
            r2 = r1
        L12:
            r3 = 2
            r4 = 0
            r5 = 0
            if (r2 > r3) goto L42
            android.os.UserManager r3 = com.google.android.gms.internal.measurement.zzjm.zza     // Catch: java.lang.Throwable -> Lf
            if (r3 != 0) goto L25
            java.lang.Class<android.os.UserManager> r3 = android.os.UserManager.class
            java.lang.Object r3 = r7.getSystemService(r3)     // Catch: java.lang.Throwable -> Lf
            android.os.UserManager r3 = (android.os.UserManager) r3     // Catch: java.lang.Throwable -> Lf
            com.google.android.gms.internal.measurement.zzjm.zza = r3     // Catch: java.lang.Throwable -> Lf
        L25:
            android.os.UserManager r3 = com.google.android.gms.internal.measurement.zzjm.zza     // Catch: java.lang.Throwable -> Lf
            if (r3 != 0) goto L2b
            r5 = r1
            goto L46
        L2b:
            boolean r6 = com.google.android.gms.internal.auth.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3)     // Catch: java.lang.Throwable -> Lf java.lang.NullPointerException -> L3d
            if (r6 != 0) goto L3b
            android.os.UserHandle r6 = android.os.Process.myUserHandle()     // Catch: java.lang.Throwable -> Lf java.lang.NullPointerException -> L3d
            boolean r7 = r3.isUserRunning(r6)     // Catch: java.lang.Throwable -> Lf java.lang.NullPointerException -> L3d
            if (r7 != 0) goto L42
        L3b:
            r5 = r1
            goto L42
        L3d:
            com.google.android.gms.internal.measurement.zzjm.zza = r4     // Catch: java.lang.Throwable -> Lf
            int r2 = r2 + 1
            goto L12
        L42:
            if (r5 == 0) goto L46
            com.google.android.gms.internal.measurement.zzjm.zza = r4     // Catch: java.lang.Throwable -> Lf
        L46:
            if (r5 == 0) goto L4a
            com.google.android.gms.internal.measurement.zzjm.zzb = r1     // Catch: java.lang.Throwable -> Lf
        L4a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lf
            return r5
        L4c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lf
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjm.zzd(android.content.Context):boolean");
    }
}
