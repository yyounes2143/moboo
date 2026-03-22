package java.util.function;
/* loaded from: classes2.dex */
public interface Function<T, R> {
    /* renamed from: andThen */
    <V> Function<T, V> mo425andThen(Function<? super R, ? extends V> function);

    R apply(T t);
}
