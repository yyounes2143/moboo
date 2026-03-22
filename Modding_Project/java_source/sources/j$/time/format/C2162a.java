package j$.time.format;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.C2170g;
import j$.util.C2171h;
import j$.util.C2173j;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
/* renamed from: j$.time.format.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2162a implements Function, IntFunction, Supplier, BiConsumer, BinaryOperator, DoubleBinaryOperator, ObjDoubleConsumer, DoubleFunction, ToDoubleFunction {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11749a;

    public /* synthetic */ C2162a(int i) {
        this.f11749a = i;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f11749a) {
            case 12:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case 18:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case 19:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case 20:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case 24:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            default:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen  reason: collision with other method in class */
    public /* synthetic */ Function mo425andThen(Function function) {
        switch (this.f11749a) {
            case 8:
                return Function$CC.$default$andThen(this, function);
            default:
                return Function$CC.$default$andThen(this, function);
        }
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        return Double.valueOf(d);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.f11749a) {
            case 8:
                break;
            default:
                Set set = Collectors.f11862a;
                break;
        }
        return obj;
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        return Math.min(d, d2);
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.f11749a) {
            case 8:
                return Function$CC.$default$compose(this, function);
            default:
                return Function$CC.$default$compose(this, function);
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        List list = (List) obj;
        Set set = Collectors.f11862a;
        list.addAll((List) obj2);
        return list;
    }

    @Override // java.util.function.ToDoubleFunction
    public double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public Object a(j$.time.temporal.m mVar) {
        switch (this.f11749a) {
            case 0:
                ZoneId zoneId = (ZoneId) mVar.n(j$.time.temporal.q.f11790a);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 1:
                return (ZoneId) mVar.n(j$.time.temporal.q.f11790a);
            case 2:
                return (j$.time.chrono.l) mVar.n(j$.time.temporal.q.b);
            case 3:
                return (j$.time.temporal.r) mVar.n(j$.time.temporal.q.c);
            case 4:
                j$.time.temporal.a aVar = j$.time.temporal.a.OFFSET_SECONDS;
                if (mVar.e(aVar)) {
                    return ZoneOffset.M(mVar.i(aVar));
                }
                return null;
            case 5:
                ZoneId zoneId2 = (ZoneId) mVar.n(j$.time.temporal.q.f11790a);
                return zoneId2 != null ? zoneId2 : (ZoneId) mVar.n(j$.time.temporal.q.d);
            case 6:
                j$.time.temporal.a aVar2 = j$.time.temporal.a.EPOCH_DAY;
                if (mVar.e(aVar2)) {
                    return LocalDate.O(mVar.r(aVar2));
                }
                return null;
            default:
                j$.time.temporal.a aVar3 = j$.time.temporal.a.NANO_OF_DAY;
                if (mVar.e(aVar3)) {
                    return LocalTime.J(mVar.r(aVar3));
                }
                return null;
        }
    }

    public String toString() {
        switch (this.f11749a) {
            case 1:
                return "ZoneId";
            case 2:
                return "Chronology";
            case 3:
                return "Precision";
            case 4:
                return "ZoneOffset";
            case 5:
                return "Zone";
            case 6:
                return "LocalDate";
            case 7:
                return "LocalTime";
            default:
                return super.toString();
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f11749a) {
            case 10:
                return new C2170g();
            case 11:
                return new ArrayList();
            case 12:
            case 15:
            case 16:
            default:
                return new double[4];
            case 13:
                return new C2171h();
            case 14:
                return new C2173j();
            case 17:
                return new LinkedHashSet();
        }
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        switch (this.f11749a) {
            case 23:
                double[] dArr = (double[]) obj;
                dArr[2] = dArr[2] + 1.0d;
                Collectors.a(dArr, d);
                dArr[3] = dArr[3] + d;
                return;
            default:
                ((C2170g) obj).accept(d);
                return;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f11749a) {
            case 12:
                ((List) obj).add(obj2);
                return;
            case 18:
                ((LinkedHashSet) obj).add(obj2);
                return;
            case 19:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                return;
            case 20:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.a(dArr, dArr2[0]);
                Collectors.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                return;
            case 24:
                double[] dArr3 = (double[]) obj;
                double[] dArr4 = (double[]) obj2;
                Collectors.a(dArr3, dArr4[0]);
                Collectors.a(dArr3, dArr4[1]);
                dArr3[2] = dArr3[2] + dArr4[2];
                dArr3[3] = dArr3[3] + dArr4[3];
                return;
            default:
                ((C2170g) obj).b((C2170g) obj2);
                return;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.f11749a) {
            case 9:
                return new Object[i];
            default:
                return new Double[i];
        }
    }
}
