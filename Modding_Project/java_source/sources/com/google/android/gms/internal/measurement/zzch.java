package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import androidx.annotation.Nullable;
import java.lang.reflect.Method;
/* compiled from: Proguard */
@TargetApi(24)
/* loaded from: classes4.dex */
public final class zzch {
    @Nullable
    private static final Method zza;
    @Nullable
    private static final Method zzb;

    /* JADX WARN: Removed duplicated region for block: B:16:0x002c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 24
            if (r0 < r2) goto L25
            java.lang.Class<android.app.job.JobScheduler> r0 = android.app.job.JobScheduler.class
            java.lang.String r3 = "scheduleAsPackage"
            r4 = 4
            java.lang.Class[] r4 = new java.lang.Class[r4]     // Catch: java.lang.NoSuchMethodException -> L25
            java.lang.Class<android.app.job.JobInfo> r5 = android.app.job.JobInfo.class
            r6 = 0
            r4[r6] = r5     // Catch: java.lang.NoSuchMethodException -> L25
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r6 = 1
            r4[r6] = r5     // Catch: java.lang.NoSuchMethodException -> L25
            java.lang.Class r6 = java.lang.Integer.TYPE     // Catch: java.lang.NoSuchMethodException -> L25
            r7 = 2
            r4[r7] = r6     // Catch: java.lang.NoSuchMethodException -> L25
            r6 = 3
            r4[r6] = r5     // Catch: java.lang.NoSuchMethodException -> L25
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r3, r4)     // Catch: java.lang.NoSuchMethodException -> L25
            goto L26
        L25:
            r0 = r1
        L26:
            com.google.android.gms.internal.measurement.zzch.zza = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r2) goto L34
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.String r2 = "myUserId"
            java.lang.reflect.Method r1 = r0.getDeclaredMethod(r2, r1)     // Catch: java.lang.NoSuchMethodException -> L34
        L34:
            com.google.android.gms.internal.measurement.zzch.zzb = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzch.<clinit>():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0035 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.content.Context r4, android.app.job.JobInfo r5, java.lang.String r6, java.lang.String r7) {
        /*
            r6 = 0
            java.lang.String r7 = "jobscheduler"
            java.lang.Object r7 = r4.getSystemService(r7)
            android.app.job.JobScheduler r7 = (android.app.job.JobScheduler) r7
            java.lang.Object r7 = com.google.common.base.Preconditions.checkNotNull(r7)
            android.app.job.JobScheduler r7 = (android.app.job.JobScheduler) r7
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.zzch.zza
            if (r0 == 0) goto L5d
            java.lang.String r0 = "android.permission.UPDATE_DEVICE_STATS"
            int r4 = r4.checkSelfPermission(r0)
            if (r4 == 0) goto L1c
            goto L5d
        L1c:
            java.lang.reflect.Method r4 = com.google.android.gms.internal.measurement.zzch.zzb
            if (r4 == 0) goto L30
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            r1 = 0
            java.lang.Object r4 = r4.invoke(r0, r1)     // Catch: java.lang.Throwable -> L30
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.Throwable -> L30
            if (r4 == 0) goto L30
            int r4 = r4.intValue()     // Catch: java.lang.Throwable -> L30
            goto L31
        L30:
            r4 = r6
        L31:
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.zzch.zza
            if (r0 == 0) goto L58
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L58
            r1 = 4
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L58
            r1[r6] = r5     // Catch: java.lang.Throwable -> L58
            java.lang.String r2 = "com.google.android.gms"
            r3 = 1
            r1[r3] = r2     // Catch: java.lang.Throwable -> L58
            r2 = 2
            r1[r2] = r4     // Catch: java.lang.Throwable -> L58
            java.lang.String r4 = "UploadAlarm"
            r2 = 3
            r1[r2] = r4     // Catch: java.lang.Throwable -> L58
            java.lang.Object r4 = r0.invoke(r7, r1)     // Catch: java.lang.Throwable -> L58
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.Throwable -> L58
            if (r4 == 0) goto L5c
            int r6 = r4.intValue()     // Catch: java.lang.Throwable -> L58
            goto L5c
        L58:
            int r6 = r7.schedule(r5)
        L5c:
            return r6
        L5d:
            int r4 = r7.schedule(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzch.zza(android.content.Context, android.app.job.JobInfo, java.lang.String, java.lang.String):int");
    }
}
