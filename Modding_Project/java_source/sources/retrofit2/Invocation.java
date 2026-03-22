package retrofit2;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Invocation {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<?> f14204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f14205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Invocation(Method method, List<?> list) {
        this.f14205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
        this.f14204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableList(list);
    }

    public Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String toString() {
        return String.format("%s.%s() %s", this.f14205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getDeclaringClass().getName(), this.f14205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getName(), this.f14204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
