package j$.util.stream;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* loaded from: classes2.dex */
public class M2 extends S2 implements DoubleConsumer {
    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.S2
    public final void s(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj2;
        while (i < i2) {
            doubleConsumer.accept(dArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.S2
    public final int t(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // java.lang.Iterable, j$.lang.a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            f((DoubleConsumer) consumer);
        } else if (K3.f11879a) {
            K3.a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            j$.com.android.tools.r8.a.h((L2) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.S2
    public final Object[] w() {
        return new double[8];
    }

    @Override // j$.util.stream.S2
    public final Object c(int i) {
        return new double[i];
    }

    @Override // java.util.function.DoubleConsumer
    public void accept(double d) {
        x();
        int i = this.b;
        this.b = i + 1;
        ((double[]) this.e)[i] = d;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        j$.util.A spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.N(spliterator);
    }

    @Override // j$.util.stream.S2, java.lang.Iterable
    /* renamed from: y */
    public j$.util.A spliterator() {
        return new L2(this, 0, this.c, 0, this.b);
    }

    public final String toString() {
        double[] dArr = (double[]) e();
        if (dArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.c), Arrays.toString(dArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }
}
