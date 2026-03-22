package com.tencent.thumbplayer.tcmedia.utils;

import android.os.SystemClock;
/* loaded from: classes6.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private long f10687a;
    private long b;

    public void a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f10687a = elapsedRealtime;
        this.b = elapsedRealtime;
    }

    public void b() {
        this.b = SystemClock.elapsedRealtime();
    }

    public long c() {
        return SystemClock.elapsedRealtime() - this.b;
    }

    public long d() {
        return SystemClock.elapsedRealtime() - this.f10687a;
    }

    public long e() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.b;
        this.b = elapsedRealtime;
        return j;
    }
}
