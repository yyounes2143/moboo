package j$.util.stream;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public class Q2 extends S2 implements LongConsumer {
    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.S2
    public final void s(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        LongConsumer longConsumer = (LongConsumer) obj2;
        while (i < i2) {
            longConsumer.accept(jArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.S2
    public final int t(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // java.lang.Iterable, j$.lang.a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            f((LongConsumer) consumer);
        } else if (K3.f11879a) {
            K3.a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            j$.com.android.tools.r8.a.j((P2) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.S2
    public final Object[] w() {
        return new long[8];
    }

    @Override // j$.util.stream.S2
    public final Object c(int i) {
        return new long[i];
    }

    @Override // java.util.function.LongConsumer
    public void accept(long j) {
        x();
        int i = this.b;
        this.b = i + 1;
        ((long[]) this.e)[i] = j;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        j$.util.F spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.M(spliterator);
    }

    @Override // j$.util.stream.S2, java.lang.Iterable
    /* renamed from: y */
    public j$.util.F spliterator() {
        return new P2(this, 0, this.c, 0, this.b);
    }

    public final String toString() {
        long[] jArr = (long[]) e();
        if (jArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.c), Arrays.toString(jArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }
}
