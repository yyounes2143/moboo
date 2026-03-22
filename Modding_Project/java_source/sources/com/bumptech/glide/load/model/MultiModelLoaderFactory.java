package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MultiModelLoaderFactory {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f4661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<Entry<?, ?>> f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Factory f4663Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Entry<?, ?>> f4664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Factory f4660Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Factory();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ModelLoader<Object, Object> f4659Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new EmptyModelLoader();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class EmptyModelLoader implements ModelLoader<Object, Object> {
        @Override // com.bumptech.glide.load.model.ModelLoader
        @Nullable
        public ModelLoader.LoadData<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Object obj, int i, int i2, @NonNull Options options) {
            return null;
        }

        @Override // com.bumptech.glide.load.model.ModelLoader
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Object obj) {
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Entry<Model, Data> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ModelLoaderFactory<? extends Model, ? extends Data> f4665Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<Data> f4666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<Model> f4667Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Entry(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
            this.f4667Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
            this.f4666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls2;
            this.f4665Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = modelLoaderFactory;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls) && this.f4666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isAssignableFrom(cls2)) {
                return true;
            }
            return false;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls) {
            return this.f4667Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isAssignableFrom(cls);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Factory {
        @NonNull
        public <Model, Data> MultiModelLoader<Model, Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ModelLoader<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            return new MultiModelLoader<>(list, pool);
        }
    }

    public MultiModelLoaderFactory(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(pool, f4660Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NonNull
    public static <Model, Data> ModelLoader<Model, Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (ModelLoader<Model, Data>) f4659Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public synchronized List<Class<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (Entry<?, ?> entry : this.f4664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (!arrayList.contains(entry.f4666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls)) {
                arrayList.add(entry.f4666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <Model> List<ModelLoader<Model, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (Entry<?, ?> entry : this.f4664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (!this.f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(entry) && entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls)) {
                    this.f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(entry);
                    arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry));
                    this.f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(entry);
                }
            }
        } catch (Throwable th) {
            this.f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            throw th;
        }
        return arrayList;
    }

    @NonNull
    public synchronized <Model, Data> ModelLoader<Model, Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (Entry<?, ?> entry : this.f4664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (this.f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(entry)) {
                    z = true;
                } else if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2)) {
                    this.f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(entry);
                    arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry));
                    this.f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(entry);
                }
            }
            if (arrayList.size() > 1) {
                return this.f4663Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList, this.f4661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            } else if (arrayList.size() == 1) {
                return (ModelLoader) arrayList.get(0);
            } else if (z) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                throw new Registry.NoModelLoaderAvailableException((Class<?>) cls, (Class<?>) cls2);
            }
        } catch (Throwable th) {
            this.f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            throw th;
        }
    }

    @NonNull
    public final <Model, Data> ModelLoader<Model, Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Entry<?, ?> entry) {
        return (ModelLoader) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry.f4665Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this));
    }

    public synchronized <Model, Data> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, modelLoaderFactory, true);
    }

    public final <Model, Data> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory, boolean z) {
        int i;
        Entry<?, ?> entry = new Entry<>(cls, cls2, modelLoaderFactory);
        List<Entry<?, ?>> list = this.f4664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (z) {
            i = list.size();
        } else {
            i = 0;
        }
        list.add(i, entry);
    }

    @VisibleForTesting
    public MultiModelLoaderFactory(@NonNull Pools.Pool<List<Throwable>> pool, @NonNull Factory factory) {
        this.f4664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        this.f4662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();
        this.f4661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = pool;
        this.f4663Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
    }
}
