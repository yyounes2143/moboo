package com.tencent.liteav.base.a;

import android.os.SystemClock;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public long f10202a = 0;
    private final long b;

    public a(long j) {
        this.b = j;
    }

    public final boolean a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.f10202a;
        if (j != 0 && elapsedRealtime - j <= this.b) {
            return false;
        }
        this.f10202a = SystemClock.elapsedRealtime();
        return true;
    }
}
