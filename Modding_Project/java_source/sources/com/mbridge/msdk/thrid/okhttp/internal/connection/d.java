package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import java.util.LinkedHashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final Set<a0> f9561a = new LinkedHashSet();

    public synchronized void a(a0 a0Var) {
        this.f9561a.remove(a0Var);
    }

    public synchronized void b(a0 a0Var) {
        this.f9561a.add(a0Var);
    }

    public synchronized boolean c(a0 a0Var) {
        return this.f9561a.contains(a0Var);
    }
}
