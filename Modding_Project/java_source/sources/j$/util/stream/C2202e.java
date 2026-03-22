package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2202e implements BaseStream, AutoCloseable {

    /* renamed from: a */
    public final /* synthetic */ java.util.stream.BaseStream f11902a;

    public /* synthetic */ C2202e(java.util.stream.BaseStream baseStream) {
        this.f11902a = baseStream;
    }

    public static /* synthetic */ BaseStream j(java.util.stream.BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C2207f ? ((C2207f) baseStream).f11904a : baseStream instanceof java.util.stream.DoubleStream ? C2306z.j((java.util.stream.DoubleStream) baseStream) : baseStream instanceof java.util.stream.IntStream ? IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) baseStream) : baseStream instanceof java.util.stream.LongStream ? C2218h0.j((java.util.stream.LongStream) baseStream) : baseStream instanceof java.util.stream.Stream ? U2.j((java.util.stream.Stream) baseStream) : new C2202e(baseStream);
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f11902a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.BaseStream baseStream = this.f11902a;
        if (obj instanceof C2202e) {
            obj = ((C2202e) obj).f11902a;
        }
        return baseStream.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f11902a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f11902a.isParallel();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Iterator iterator() {
        return this.f11902a.iterator();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return j(this.f11902a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return j(this.f11902a.parallel());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return j(this.f11902a.sequential());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.J.a(this.f11902a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return j(this.f11902a.unordered());
    }
}
