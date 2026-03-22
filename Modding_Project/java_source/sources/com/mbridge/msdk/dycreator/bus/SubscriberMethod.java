package com.mbridge.msdk.dycreator.bus;

import java.lang.reflect.Method;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class SubscriberMethod {

    /* renamed from: a  reason: collision with root package name */
    final Method f8901a;
    final ThreadMode b;
    final Class<?> c;
    String d;

    public SubscriberMethod(Method method, ThreadMode threadMode, Class<?> cls) {
        this.f8901a = method;
        this.b = threadMode;
        this.c = cls;
    }

    private synchronized void a() {
        if (this.d == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f8901a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.f8901a.getName());
            sb.append('(');
            sb.append(this.c.getName());
            this.d = sb.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof SubscriberMethod) {
            a();
            return this.d.equals(((SubscriberMethod) obj).d);
        }
        return false;
    }

    public int hashCode() {
        return this.f8901a.hashCode();
    }
}
