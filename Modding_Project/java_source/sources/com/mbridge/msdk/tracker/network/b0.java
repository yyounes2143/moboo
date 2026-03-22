package com.mbridge.msdk.tracker.network;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class b0 extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final q f9671a;
    private long b;
    private int c;
    private String d;

    public b0() {
        this.c = 0;
        this.d = "";
        this.f9671a = null;
    }

    public abstract int a();

    public void a(long j) {
        this.b = j;
    }

    public int b() {
        return this.c;
    }

    public void a(int i) {
        this.c = i;
    }

    public b0(q qVar) {
        this.c = 0;
        this.d = "";
        this.f9671a = qVar;
    }

    public b0(String str) {
        super(str);
        this.c = 0;
        this.d = "";
        this.f9671a = null;
    }

    public b0(Throwable th) {
        super(th);
        this.c = 0;
        this.d = "";
        this.f9671a = null;
    }
}
