package j$.util.stream;

import j$.util.Spliterator;
/* renamed from: j$.util.stream.z1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2308z1 extends AbstractC2273s1 {
    public final /* synthetic */ int h;

    public /* synthetic */ C2308z1(int i) {
        this.h = i;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.util.stream.N1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.N1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.stream.N1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.N1, java.lang.Object] */
    @Override // j$.util.stream.AbstractC2273s1
    public final N1 Q() {
        switch (this.h) {
            case 0:
                return new Object();
            case 1:
                return new Object();
            case 2:
                return new Object();
            default:
                return new Object();
        }
    }

    @Override // j$.util.stream.AbstractC2273s1, j$.util.stream.I3
    public final Object b(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                return X2.SIZED.l(abstractC2182a.f) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.b(abstractC2182a, spliterator);
            case 1:
                return X2.SIZED.l(abstractC2182a.f) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.b(abstractC2182a, spliterator);
            case 2:
                return X2.SIZED.l(abstractC2182a.f) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.b(abstractC2182a, spliterator);
            default:
                return X2.SIZED.l(abstractC2182a.f) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.b(abstractC2182a, spliterator);
        }
    }

    @Override // j$.util.stream.AbstractC2273s1, j$.util.stream.I3
    public final Object c(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                return X2.SIZED.l(abstractC2182a.f) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.c(abstractC2182a, spliterator);
            case 1:
                return X2.SIZED.l(abstractC2182a.f) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.c(abstractC2182a, spliterator);
            case 2:
                return X2.SIZED.l(abstractC2182a.f) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.c(abstractC2182a, spliterator);
            default:
                return X2.SIZED.l(abstractC2182a.f) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.c(abstractC2182a, spliterator);
        }
    }

    @Override // j$.util.stream.AbstractC2273s1, j$.util.stream.I3
    public final int d() {
        switch (this.h) {
            case 0:
                return X2.r;
            case 1:
                return X2.r;
            case 2:
                return X2.r;
            default:
                return X2.r;
        }
    }
}
