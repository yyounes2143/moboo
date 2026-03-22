package j$.util.stream;

import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class Z implements ObjLongConsumer, BiConsumer, LongBinaryOperator, Consumer, IntFunction, LongFunction, BinaryOperator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11894a;

    public /* synthetic */ Z(int i) {
        this.f11894a = i;
    }

    private final void accept$j$$util$stream$Node$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1(Object obj) {
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f11894a;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f11894a) {
            case 7:
                return BiFunction$CC.$default$andThen(this, function);
            case 8:
            case 10:
            default:
                return BiFunction$CC.$default$andThen(this, function);
            case 9:
                return BiFunction$CC.$default$andThen(this, function);
            case 11:
                return BiFunction$CC.$default$andThen(this, function);
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f11894a) {
            case 4:
                return Consumer$CC.$default$andThen(this, consumer);
            case 17:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        switch (this.f11894a) {
            case 6:
                return AbstractC2273s1.D(j);
            case 7:
            default:
                return AbstractC2273s1.L(j);
            case 8:
                return AbstractC2273s1.K(j);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        switch (this.f11894a) {
            case 2:
                return Math.max(j, j2);
            default:
                return j + j2;
        }
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + j;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        long[] jArr = (long[]) obj;
        long[] jArr2 = (long[]) obj2;
        jArr[0] = jArr[0] + jArr2[0];
        jArr[1] = jArr[1] + jArr2[1];
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.f11894a) {
            case 5:
                return new Object[i];
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 17:
            case 18:
            default:
                return new Double[i];
            case 13:
                return new Object[i];
            case 14:
                return new Integer[i];
            case 15:
                return new Long[i];
            case 16:
                return new Double[i];
            case 19:
                return new Integer[i];
            case 20:
                return new Integer[i];
            case 21:
                return new Long[i];
            case 22:
                return new Long[i];
            case 23:
                return new Double[i];
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f11894a) {
            case 7:
                return new E0((InterfaceC2292w0) obj, (InterfaceC2292w0) obj2);
            case 8:
            case 10:
            default:
                return new E0((C0) obj, (C0) obj2);
            case 9:
                return new E0((InterfaceC2302y0) obj, (InterfaceC2302y0) obj2);
            case 11:
                return new E0((A0) obj, (A0) obj2);
        }
    }
}
