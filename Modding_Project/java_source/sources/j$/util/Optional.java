package j$.util;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public final class Optional<T> {
    public static final Optional b = new Optional();

    /* renamed from: a  reason: collision with root package name */
    public final Object f11816a;

    public Optional() {
        this.f11816a = null;
    }

    public Optional(Object obj) {
        this.f11816a = Objects.requireNonNull(obj);
    }

    public static <T> Optional<T> ofNullable(T t) {
        if (t != null) {
            return new Optional<>(t);
        }
        return b;
    }

    public T get() {
        T t = (T) this.f11816a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public boolean isPresent() {
        return this.f11816a != null;
    }

    public T orElse(T t) {
        T t2 = (T) this.f11816a;
        return t2 != null ? t2 : t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return Objects.equals(this.f11816a, ((Optional) obj).f11816a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f11816a);
    }

    public final String toString() {
        Object obj = this.f11816a;
        if (obj != null) {
            return String.format("Optional[%s]", obj);
        }
        return "Optional.empty";
    }
}
