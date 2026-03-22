package com.google.android.gms.internal.measurement;

import com.google.common.base.Optional;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzka {
    static volatile Optional zza = Optional.absent();
    private static final Object zzb = new Object();

    /* JADX WARN: Can't wrap try/catch for region: R(11:18|(8:20|(1:22)(1:31)|23|(1:25)|27|28|29|30)|32|33|34|35|(1:37)|27|28|29|30) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
        if ("com.google.android.gms".equals(r0.packageName) != false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zza(android.content.Context r5, android.net.Uri r6) {
        /*
            java.lang.String r0 = "com.google.android.gms.phenotype"
            java.lang.String r6 = r6.getAuthority()
            boolean r0 = r0.equals(r6)
            r1 = 0
            if (r0 != 0) goto L17
            java.lang.String r5 = java.lang.String.valueOf(r6)
            java.lang.String r6 = " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."
            r5.concat(r6)
            return r1
        L17:
            com.google.common.base.Optional r6 = com.google.android.gms.internal.measurement.zzka.zza
            boolean r6 = r6.isPresent()
            if (r6 == 0) goto L2c
            com.google.common.base.Optional r5 = com.google.android.gms.internal.measurement.zzka.zza
            java.lang.Object r5 = r5.get()
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            return r5
        L2c:
            java.lang.Object r6 = com.google.android.gms.internal.measurement.zzka.zzb
            monitor-enter(r6)
            com.google.common.base.Optional r0 = com.google.android.gms.internal.measurement.zzka.zza     // Catch: java.lang.Throwable -> L45
            boolean r0 = r0.isPresent()     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto L47
            com.google.common.base.Optional r5 = com.google.android.gms.internal.measurement.zzka.zza     // Catch: java.lang.Throwable -> L45
            java.lang.Object r5 = r5.get()     // Catch: java.lang.Throwable -> L45
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Throwable -> L45
            boolean r5 = r5.booleanValue()     // Catch: java.lang.Throwable -> L45
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L45
            return r5
        L45:
            r5 = move-exception
            goto L9c
        L47:
            java.lang.String r0 = "com.google.android.gms"
            java.lang.String r2 = r5.getPackageName()     // Catch: java.lang.Throwable -> L45
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> L45
            if (r0 != 0) goto L73
            android.content.pm.PackageManager r0 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L45
            java.lang.String r2 = "com.google.android.gms.phenotype"
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L45
            r4 = 29
            if (r3 >= r4) goto L61
            r3 = r1
            goto L63
        L61:
            r3 = 268435456(0x10000000, float:2.5243549E-29)
        L63:
            android.content.pm.ProviderInfo r0 = r0.resolveContentProvider(r2, r3)     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto L84
            java.lang.String r2 = "com.google.android.gms"
            java.lang.String r0 = r0.packageName     // Catch: java.lang.Throwable -> L45
            boolean r0 = r2.equals(r0)     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto L84
        L73:
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L45
            java.lang.String r0 = "com.google.android.gms"
            android.content.pm.ApplicationInfo r5 = r5.getApplicationInfo(r0, r1)     // Catch: java.lang.Throwable -> L45 android.content.pm.PackageManager.NameNotFoundException -> L84
            int r5 = r5.flags     // Catch: java.lang.Throwable -> L45
            r5 = r5 & 129(0x81, float:1.81E-43)
            if (r5 == 0) goto L84
            r1 = 1
        L84:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r1)     // Catch: java.lang.Throwable -> L45
            com.google.common.base.Optional r5 = com.google.common.base.Optional.of(r5)     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.measurement.zzka.zza = r5     // Catch: java.lang.Throwable -> L45
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L45
            com.google.common.base.Optional r5 = com.google.android.gms.internal.measurement.zzka.zza
            java.lang.Object r5 = r5.get()
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            return r5
        L9c:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L45
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzka.zza(android.content.Context, android.net.Uri):boolean");
    }
}
