package j$.util.concurrent;

import java.util.Map;
/* loaded from: classes2.dex */
public final class k implements Map.Entry {

    /* renamed from: a  reason: collision with root package name */
    public final Object f11832a;
    public Object b;
    public final ConcurrentHashMap c;

    public k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
        this.f11832a = obj;
        this.b = obj2;
        this.c = concurrentHashMap;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f11832a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f11832a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        return j$.com.android.tools.r8.a.Q(this.f11832a, this.b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (value = entry.getValue()) == null) {
            return false;
        }
        Object obj2 = this.f11832a;
        if (key == obj2 || key.equals(obj2)) {
            Object obj3 = this.b;
            return value == obj3 || value.equals(obj3);
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        obj.getClass();
        Object obj2 = this.b;
        this.b = obj;
        this.c.put(this.f11832a, obj);
        return obj2;
    }
}
