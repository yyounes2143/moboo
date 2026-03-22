package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.h  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2217h implements java.util.stream.Collector {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Collector f11909a;

    @Override // java.util.stream.Collector
    public final /* synthetic */ BiConsumer accumulator() {
        return this.f11909a.accumulator();
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Set characteristics() {
        return V2.a(this.f11909a.characteristics());
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ BinaryOperator combiner() {
        return this.f11909a.combiner();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Collector collector = this.f11909a;
        if (obj instanceof C2217h) {
            obj = ((C2217h) obj).f11909a;
        }
        return collector.equals(obj);
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Function finisher() {
        return this.f11909a.finisher();
    }

    public final /* synthetic */ int hashCode() {
        return this.f11909a.hashCode();
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Supplier supplier() {
        return this.f11909a.supplier();
    }
}
