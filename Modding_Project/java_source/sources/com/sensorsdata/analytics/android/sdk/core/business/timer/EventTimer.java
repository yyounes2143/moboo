package com.sensorsdata.analytics.android.sdk.core.business.timer;

import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class EventTimer {
    private long startTime;
    private final TimeUnit timeUnit;
    private boolean isPaused = false;
    private long eventAccumulatedDuration = 0;
    private long endTime = -1;

    public EventTimer(TimeUnit timeUnit, long j) {
        this.startTime = j;
        this.timeUnit = timeUnit;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0054 A[Catch: Exception -> 0x005c, TRY_LEAVE, TryCatch #0 {Exception -> 0x005c, blocks: (B:14:0x002c, B:16:0x0034, B:30:0x0054, B:17:0x0036, B:19:0x003a, B:20:0x003d, B:22:0x0043, B:23:0x0045, B:24:0x0047, B:26:0x004b), top: B:36:0x002c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float duration() {
        /*
            r7 = this;
            boolean r0 = r7.isPaused
            r1 = 0
            if (r0 == 0) goto Lb
            long r3 = r7.startTime
            r7.endTime = r3
            goto L17
        Lb:
            long r3 = r7.endTime
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 >= 0) goto L15
            long r3 = android.os.SystemClock.elapsedRealtime()
        L15:
            r7.endTime = r3
        L17:
            long r3 = r7.endTime
            long r5 = r7.startTime
            long r3 = r3 - r5
            long r5 = r7.eventAccumulatedDuration
            long r3 = r3 + r5
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            r1 = 0
            if (r0 < 0) goto L60
            r5 = 86400000(0x5265c00, double:4.2687272E-316)
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 <= 0) goto L2c
            goto L60
        L2c:
            java.util.concurrent.TimeUnit r0 = r7.timeUnit     // Catch: java.lang.Exception -> L5c
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L5c
            r5 = 1148846080(0x447a0000, float:1000.0)
            if (r0 != r2) goto L36
        L34:
            float r0 = (float) r3     // Catch: java.lang.Exception -> L5c
            goto L4f
        L36:
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Exception -> L5c
            if (r0 != r2) goto L3d
            float r0 = (float) r3     // Catch: java.lang.Exception -> L5c
            float r0 = r0 / r5
            goto L4f
        L3d:
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MINUTES     // Catch: java.lang.Exception -> L5c
            r6 = 1114636288(0x42700000, float:60.0)
            if (r0 != r2) goto L47
            float r0 = (float) r3     // Catch: java.lang.Exception -> L5c
            float r0 = r0 / r5
        L45:
            float r0 = r0 / r6
            goto L4f
        L47:
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.HOURS     // Catch: java.lang.Exception -> L5c
            if (r0 != r2) goto L34
            float r0 = (float) r3     // Catch: java.lang.Exception -> L5c
            float r0 = r0 / r5
            float r0 = r0 / r6
            goto L45
        L4f:
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r2 >= 0) goto L54
            return r1
        L54:
            float r0 = r0 * r5
            int r0 = java.lang.Math.round(r0)     // Catch: java.lang.Exception -> L5c
            float r0 = (float) r0
            float r0 = r0 / r5
            return r0
        L5c:
            r0 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r0)
        L60:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.core.business.timer.EventTimer.duration():float");
    }

    public long getEndTime() {
        return this.endTime;
    }

    public long getEventAccumulatedDuration() {
        return this.eventAccumulatedDuration;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public boolean isPaused() {
        return this.isPaused;
    }

    public void setEndTime(long j) {
        this.endTime = j;
    }

    public void setEventAccumulatedDuration(long j) {
        this.eventAccumulatedDuration = j;
    }

    public void setStartTime(long j) {
        this.startTime = j;
    }

    public void setTimerState(boolean z, long j) {
        this.isPaused = z;
        if (z) {
            this.eventAccumulatedDuration = (this.eventAccumulatedDuration + j) - this.startTime;
        }
        this.startTime = j;
    }
}
