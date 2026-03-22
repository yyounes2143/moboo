package j$.util.stream;

import j$.util.C2171h;
import j$.util.C2173j;
import j$.util.C2174k;
import j$.util.C2175l;
import j$.util.C2176m;
import j$.util.Optional;
import j$.util.function.BiConsumer$CC;
import j$.util.function.Predicate$CC;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
/* renamed from: j$.util.stream.o  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2252o implements DoubleBinaryOperator, Supplier, ObjDoubleConsumer, Predicate, IntFunction, ToIntFunction, IntBinaryOperator, ObjIntConsumer, BiConsumer, ObjLongConsumer, LongBinaryOperator, ToLongFunction, LongFunction {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11922a;

    public /* synthetic */ C2252o(int i) {
        this.f11922a = i;
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j) {
        ((C2173j) obj).accept(j);
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f11922a) {
            case 3:
                return Predicate$CC.$default$and(this, predicate);
            case 4:
            case 6:
            default:
                return Predicate$CC.$default$and(this, predicate);
            case 5:
                return Predicate$CC.$default$and(this, predicate);
            case 7:
                return Predicate$CC.$default$and(this, predicate);
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f11922a) {
            case 17:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case 22:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            default:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        return Long.valueOf(j);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        return Math.max(d, d2);
    }

    @Override // java.util.function.IntBinaryOperator
    public int applyAsInt(int i, int i2) {
        switch (this.f11922a) {
            case 15:
                return Math.min(i, i2);
            case 18:
                return i + i2;
            default:
                return Math.max(i, i2);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        return Math.min(j, j2);
    }

    public /* synthetic */ Predicate negate() {
        switch (this.f11922a) {
            case 3:
                return Predicate$CC.$default$negate(this);
            case 4:
            case 6:
            default:
                return Predicate$CC.$default$negate(this);
            case 5:
                return Predicate$CC.$default$negate(this);
            case 7:
                return Predicate$CC.$default$negate(this);
        }
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f11922a) {
            case 3:
                return Predicate$CC.$default$or(this, predicate);
            case 4:
            case 6:
            default:
                return Predicate$CC.$default$or(this, predicate);
            case 5:
                return Predicate$CC.$default$or(this, predicate);
            case 7:
                return Predicate$CC.$default$or(this, predicate);
        }
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        switch (this.f11922a) {
            case 3:
                return ((C2174k) obj).f11850a;
            case 4:
            case 6:
            default:
                return ((Optional) obj).isPresent();
            case 5:
                return ((C2175l) obj).f11851a;
            case 7:
                return ((C2176m) obj).f11852a;
        }
    }

    @Override // java.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        Collectors.a(dArr, d);
        dArr[2] = dArr[2] + d;
    }

    @Override // java.util.function.ToIntFunction
    public int applyAsInt(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f11922a) {
            case 1:
                return new double[3];
            case 4:
                return new Object();
            case 6:
                return new Object();
            case 8:
                return new Object();
            case 10:
                return new Object();
            case 20:
                return new long[2];
            default:
                return new long[2];
        }
    }

    @Override // java.util.function.ObjIntConsumer
    public void accept(Object obj, int i) {
        switch (this.f11922a) {
            case 16:
                ((C2171h) obj).accept(i);
                return;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + i;
                return;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f11922a) {
            case 17:
                ((C2171h) obj).b((C2171h) obj2);
                return;
            case 22:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                return;
            default:
                ((C2173j) obj).b((C2173j) obj2);
                return;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.f11922a) {
            case 11:
                return new Object[i];
            case 12:
                return new Integer[i];
            case 13:
            default:
                return new Long[i];
            case 14:
                return Integer.valueOf(i);
        }
    }
}
