package com.bumptech.glide.load.engine.bitmap_recycle;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Preconditions;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class LruArrayPool implements ArrayPool {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4461Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Class<?>, ArrayAdapterInterface<?>> f4463Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Class<?>, NavigableMap<Integer, Integer>> f4464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final KeyPool f4465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GroupedLinkedMap<Key, Object> f4466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Key implements Poolable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Class<?> f4467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final KeyPool f4469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Key(KeyPool keyPool) {
            this.f4469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = keyPool;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Class<?> cls) {
            this.f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f4467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }

        public boolean equals(Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (this.f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == key.f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == key.f4467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i;
            int i2 = this.f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * 31;
            Class<?> cls = this.f4467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (cls != null) {
                i = cls.hashCode();
            } else {
                i = 0;
            }
            return i2 + i;
        }

        public String toString() {
            return "Key{size=" + this.f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "array=" + this.f4467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class KeyPool extends BaseKeyPool<Key> {
        public Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Class<?> cls) {
            Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, cls);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new Key(this);
        }
    }

    @VisibleForTesting
    public LruArrayPool() {
        this.f4466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GroupedLinkedMap<>();
        this.f4465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new KeyPool();
        this.f4464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        this.f4463Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        this.f4462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 4194304;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwww(int i, Integer num) {
        if (num != null) {
            if (Wwwwwwwwwwwwwwwwwwwwww() || num.intValue() <= i * 8) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwww(int i) {
        if (i <= this.f4462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww / 2) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwww() {
        int i = this.f4461Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i != 0 && this.f4462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww / i < 2) {
            return false;
        }
        return true;
    }

    public final NavigableMap<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwww(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f4464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(cls);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f4464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(cls, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    public final <T> T Wwwwwwwwwwwwwwwwwwwwwwww(Key key, Class<T> cls) {
        ArrayAdapterInterface<T> Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        T t = (T) Wwwwwwwwwwwwwwwwwwwwwwwww(key);
        if (t != null) {
            this.f4461Wwwwwwwwwwwwwwwwwwwwwwwwwwwww -= Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t) * Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t), cls);
        }
        if (t == null) {
            if (Log.isLoggable(Wwwwwwwwwwwwwwwwwwwwwwwwww2.getTag(), 2)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.getTag();
                int i = key.f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwww2.newArray(key.f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return t;
    }

    @Nullable
    public final <T> T Wwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        return (T) this.f4466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
    }

    public final <T> ArrayAdapterInterface<T> Wwwwwwwwwwwwwwwwwwwwwwwwww(Class<T> cls) {
        ArrayAdapterInterface<T> byteArrayAdapter;
        ArrayAdapterInterface<T> arrayAdapterInterface = (ArrayAdapterInterface<T>) this.f4463Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(cls);
        if (arrayAdapterInterface == null) {
            if (cls.equals(int[].class)) {
                byteArrayAdapter = new IntegerArrayAdapter();
            } else if (cls.equals(byte[].class)) {
                byteArrayAdapter = new ByteArrayAdapter();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.f4463Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(cls, byteArrayAdapter);
            return byteArrayAdapter;
        }
        return arrayAdapterInterface;
    }

    public final <T> ArrayAdapterInterface<T> Wwwwwwwwwwwwwwwwwwwwwwwwwww(T t) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwww(t.getClass());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        while (this.f4461Wwwwwwwwwwwwwwwwwwwwwwwwwwwww > i) {
            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            ArrayAdapterInterface Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            this.f4461Wwwwwwwwwwwwwwwwwwwwwwwwwwwww -= Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) * Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getClass());
            if (Log.isLoggable(Wwwwwwwwwwwwwwwwwwwwwwwwwww2.getTag(), 2)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2.getTag();
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(cls);
        Integer num = Wwwwwwwwwwwwwwwwwwwwwww2.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                Wwwwwwwwwwwwwwwwwwwwwww2.remove(Integer.valueOf(i));
                return;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwww2.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Class<T> cls) {
        return (T) Wwwwwwwwwwwwwwwwwwwwwwww(this.f4465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, cls), cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Class<T> cls) {
        Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        try {
            Integer ceilingKey = Wwwwwwwwwwwwwwwwwwwwwww(cls).ceilingKey(Integer.valueOf(i));
            if (Wwwwwwwwwwwwwwwwwwww(i, ceilingKey)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ceilingKey.intValue(), cls);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, cls);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (T) Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        try {
            if (i >= 40) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else if (i >= 20 || i == 15) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized <T> void put(T t) {
        Class<?> cls = t.getClass();
        ArrayAdapterInterface<T> Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (!Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return;
        }
        Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, cls);
        this.f4466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, t);
        NavigableMap<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(cls);
        Integer num = Wwwwwwwwwwwwwwwwwwwwwww2.get(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        Integer valueOf = Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        Wwwwwwwwwwwwwwwwwwwwwww2.put(valueOf, Integer.valueOf(i));
        this.f4461Wwwwwwwwwwwwwwwwwwwwwwwwwwwww += Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public LruArrayPool(int i) {
        this.f4466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GroupedLinkedMap<>();
        this.f4465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new KeyPool();
        this.f4464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        this.f4463Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        this.f4462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }
}
