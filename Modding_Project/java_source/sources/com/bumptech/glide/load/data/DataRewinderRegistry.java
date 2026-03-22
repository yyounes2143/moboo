package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.util.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DataRewinderRegistry {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DataRewinder.Factory<?> f4195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DataRewinder.Factory<Object>() { // from class: com.bumptech.glide.load.data.DataRewinderRegistry.1
        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public DataRewinder<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Object obj) {
            return new DefaultRewinder(obj);
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public Class<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            throw new UnsupportedOperationException("Not implemented");
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Class<?>, DataRewinder.Factory<?>> f4196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull DataRewinder.Factory<?> factory) {
        this.f4196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), factory);
    }

    @NonNull
    public synchronized <T> DataRewinder<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t) {
        DataRewinder.Factory<?> factory;
        try {
            Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t);
            factory = this.f4196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(t.getClass());
            if (factory == null) {
                Iterator<DataRewinder.Factory<?>> it = this.f4196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    DataRewinder.Factory<?> next = it.next();
                    if (next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isAssignableFrom(t.getClass())) {
                        factory = next;
                        break;
                    }
                }
            }
            if (factory == null) {
                factory = f4195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
        } catch (Throwable th) {
            throw th;
        }
        return (DataRewinder<T>) factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class DefaultRewinder implements DataRewinder<Object> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f4197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DefaultRewinder(@NonNull Object obj) {
            this.f4197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        @NonNull
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }
    }
}
