package j$.util.stream;

import j$.util.C2168e;
import j$.util.stream.IntStream;
import java.util.function.IntFunction;
import java.util.function.LongFunction;
/* loaded from: classes2.dex */
public final class I implements IntFunction, LongFunction {

    /* renamed from: a  reason: collision with root package name */
    public IntFunction f11874a;

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        Object apply = this.f11874a.apply(i);
        if (apply == null) {
            return null;
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        C2168e.a("java.util.stream.IntStream", apply.getClass());
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        return AbstractC2273s1.x(j, this.f11874a);
    }
}
