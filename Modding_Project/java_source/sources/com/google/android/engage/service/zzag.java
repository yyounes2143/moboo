package com.google.android.engage.service;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzag {
    private static final com.google.android.gms.internal.engage.zzd zza = new com.google.android.gms.internal.engage.zzd(zzag.class.getSimpleName());

    private zzag() {
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0063 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.content.Context r7) {
        /*
            java.lang.String r0 = "com.google.android.engage.service.ENV"
            r1 = 0
            r2 = 0
            android.content.pm.PackageManager r3 = r7.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1b
            java.lang.String r7 = r7.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1b
            r4 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r7 = r3.getApplicationInfo(r7, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1b
            android.os.Bundle r7 = r7.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1b
            if (r7 == 0) goto L25
            java.lang.String r1 = r7.getString(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1b
            goto L25
        L1b:
            r7 = move-exception
            com.google.android.gms.internal.engage.zzd r0 = com.google.android.engage.service.zzag.zza
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.String r4 = "Package name not found."
            r0.zzb(r7, r4, r3)
        L25:
            java.lang.String r7 = "DEBUG"
            if (r1 != 0) goto L2a
            r1 = r7
        L2a:
            r0 = 2
            java.util.Locale r3 = java.util.Locale.getDefault()     // Catch: java.lang.IllegalArgumentException -> L61
            java.lang.String r3 = r1.toUpperCase(r3)     // Catch: java.lang.IllegalArgumentException -> L61
            int r4 = r3.hashCode()     // Catch: java.lang.IllegalArgumentException -> L61
            r5 = -2056856391(0xffffffff8566dcb9, float:-1.08550884E-35)
            r6 = 1
            if (r4 == r5) goto L4b
            r5 = 64921139(0x3de9e33, float:1.3084308E-36)
            if (r4 == r5) goto L43
            goto L55
        L43:
            boolean r7 = r3.equals(r7)
            if (r7 == 0) goto L55
            r7 = r6
            goto L56
        L4b:
            java.lang.String r7 = "PRODUCTION"
            boolean r7 = r3.equals(r7)
            if (r7 == 0) goto L55
            r7 = r2
            goto L56
        L55:
            r7 = -1
        L56:
            if (r7 == 0) goto L63
            if (r7 != r6) goto L5b
            return r0
        L5b:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException     // Catch: java.lang.IllegalArgumentException -> L61
            r7.<init>()     // Catch: java.lang.IllegalArgumentException -> L61
            throw r7     // Catch: java.lang.IllegalArgumentException -> L61
        L61:
            r7 = move-exception
            goto L64
        L63:
            return r6
        L64:
            com.google.android.gms.internal.engage.zzd r3 = com.google.android.engage.service.zzag.zza
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Env ["
            r4.append(r5)
            r4.append(r1)
            java.lang.String r1 = "] is not supported. Supported values: 'debug' and 'production'."
            r4.append(r1)
            java.lang.String r1 = r4.toString()
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3.zzb(r7, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.engage.service.zzag.zza(android.content.Context):int");
    }
}
