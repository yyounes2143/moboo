package j$.util;

import j$.util.Spliterator;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class Spliterators {

    /* renamed from: a  reason: collision with root package name */
    public static final U f11819a = new Object();
    public static final S b = new Object();
    public static final T c = new Object();
    public static final Q d = new Object();

    public static Spliterator.OfInt spliterator(int[] iArr, int i, int i2, int i3) {
        a(((int[]) Objects.requireNonNull(iArr)).length, i, i2);
        return new V(iArr, i, i2, i3);
    }

    public static void a(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
            if (i3 > i) {
                throw new ArrayIndexOutOfBoundsException(i3);
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("origin(" + i2 + ") > fence(" + i3 + ")");
    }

    public static <T> Spliterator<T> spliterator(java.util.Collection<? extends T> collection, int i) {
        return new W((java.util.Collection) Objects.requireNonNull(collection), i);
    }

    public static <T> Spliterator<T> spliteratorUnknownSize(Iterator<? extends T> it, int i) {
        return new W((Iterator) Objects.requireNonNull(it), i);
    }
}
