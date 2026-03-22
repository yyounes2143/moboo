package com.google.android.gms.internal.play_billing;

import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfc implements Runnable {
    @CheckForNull
    zzff zza;

    public zzfc(zzff zzffVar) {
        this.zza = zzffVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0006, code lost:
        r1 = r0.zzc;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            com.google.android.gms.internal.play_billing.zzff r0 = r10.zza
            if (r0 != 0) goto L6
            goto L84
        L6:
            com.google.android.gms.internal.play_billing.zzeu r1 = com.google.android.gms.internal.play_billing.zzff.zzr(r0)
            if (r1 == 0) goto L84
            r2 = 0
            r10.zza = r2
            boolean r3 = r1.isDone()
            if (r3 == 0) goto L19
            r0.zzp(r1)
            return
        L19:
            r3 = 1
            java.util.concurrent.ScheduledFuture r4 = com.google.android.gms.internal.play_billing.zzff.zzt(r0)     // Catch: java.lang.Throwable -> L75
            com.google.android.gms.internal.play_billing.zzff.zzu(r0, r2)     // Catch: java.lang.Throwable -> L75
            java.lang.String r5 = "Timed out"
            if (r4 == 0) goto L51
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L4f
            long r6 = r4.getDelay(r6)     // Catch: java.lang.Throwable -> L4f
            long r6 = java.lang.Math.abs(r6)     // Catch: java.lang.Throwable -> L4f
            r8 = 10
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 <= 0) goto L51
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f
            r4.<init>()     // Catch: java.lang.Throwable -> L4f
            r4.append(r5)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r8 = " (timeout delayed by "
            r4.append(r8)     // Catch: java.lang.Throwable -> L4f
            r4.append(r6)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r6 = " ms after scheduled time)"
            r4.append(r6)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r5 = r4.toString()     // Catch: java.lang.Throwable -> L4f
            goto L51
        L4f:
            r4 = move-exception
            goto L77
        L51:
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L4f
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f
            r6.<init>()     // Catch: java.lang.Throwable -> L4f
            r6.append(r5)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r7 = ": "
            r6.append(r7)     // Catch: java.lang.Throwable -> L4f
            r6.append(r4)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r4 = r6.toString()     // Catch: java.lang.Throwable -> L4f
            com.google.android.gms.internal.play_billing.zzfd r5 = new com.google.android.gms.internal.play_billing.zzfd     // Catch: java.lang.Throwable -> L75
            r5.<init>(r4, r2)     // Catch: java.lang.Throwable -> L75
            r0.zzo(r5)     // Catch: java.lang.Throwable -> L75
            r1.cancel(r3)
            return
        L75:
            r0 = move-exception
            goto L80
        L77:
            com.google.android.gms.internal.play_billing.zzfd r6 = new com.google.android.gms.internal.play_billing.zzfd     // Catch: java.lang.Throwable -> L75
            r6.<init>(r5, r2)     // Catch: java.lang.Throwable -> L75
            r0.zzo(r6)     // Catch: java.lang.Throwable -> L75
            throw r4     // Catch: java.lang.Throwable -> L75
        L80:
            r1.cancel(r3)
            throw r0
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzfc.run():void");
    }
}
