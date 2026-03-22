package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.g  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2212g implements Collector {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ java.util.stream.Collector f11907a;

    public /* synthetic */ C2212g(java.util.stream.Collector collector) {
        this.f11907a = collector;
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ BiConsumer accumulator() {
        return this.f11907a.accumulator();
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Set characteristics() {
        return V2.a(this.f11907a.characteristics());
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ BinaryOperator combiner() {
        return this.f11907a.combiner();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.Collector collector = this.f11907a;
        if (obj instanceof C2212g) {
            obj = ((C2212g) obj).f11907a;
        }
        return collector.equals(obj);
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Function finisher() {
        return this.f11907a.finisher();
    }

    public final /* synthetic */ int hashCode() {
        return this.f11907a.hashCode();
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Supplier supplier() {
        return this.f11907a.supplier();
    }
}
