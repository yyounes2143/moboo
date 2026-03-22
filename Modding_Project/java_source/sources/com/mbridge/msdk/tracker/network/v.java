package com.mbridge.msdk.tracker.network;

import com.mbridge.msdk.tracker.network.b;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class v<T> {

    /* renamed from: a  reason: collision with root package name */
    public final T f9697a;
    public final b.a b;
    public final b0 c;
    public boolean d;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface a {
        void a(b0 b0Var);
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface b<T> {
        void a(T t);
    }

    private v(T t, b.a aVar) {
        this.d = false;
        this.f9697a = t;
        this.b = aVar;
        this.c = null;
    }

    public static <T> v<T> a(T t, b.a aVar) {
        return new v<>(t, aVar);
    }

    public static <T> v<T> a(b0 b0Var) {
        return new v<>(b0Var);
    }

    public boolean a() {
        return this.c == null;
    }

    private v(b0 b0Var) {
        this.d = false;
        this.f9697a = null;
        this.b = null;
        this.c = b0Var;
    }
}
