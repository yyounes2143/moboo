package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ModelLoaderRegistry {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelLoaderCache f4646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MultiModelLoaderFactory f4647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ModelLoaderCache {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<Class<?>, Entry<?>> f4648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public static class Entry<Model> {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final List<ModelLoader<Model, ?>> f4649Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            public Entry(List<ModelLoader<Model, ?>> list) {
                this.f4649Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
            }
        }

        public <Model> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<Model> cls, List<ModelLoader<Model, ?>> list) {
            if (this.f4648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(cls, new Entry<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }

        @Nullable
        public <Model> List<ModelLoader<Model, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<Model> cls) {
            Entry<?> entry = this.f4648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(cls);
            if (entry == null) {
                return null;
            }
            return (List<ModelLoader<Model, ?>>) entry.f4649Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        }
    }

    public ModelLoaderRegistry(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new MultiModelLoaderFactory(pool));
    }

    @NonNull
    public static <A> Class<A> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull A a2) {
        return (Class<A>) a2.getClass();
    }

    @NonNull
    public final synchronized <A> List<ModelLoader<A, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<A> cls) {
        List<ModelLoader<A, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Collections.unmodifiableList(this.f4647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls));
            this.f4646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @NonNull
    public <A> List<ModelLoader<A, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull A a2) {
        List<ModelLoader<A, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a2));
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
            List<ModelLoader<A, ?>> list = Collections.EMPTY_LIST;
            boolean z = true;
            for (int i = 0; i < size; i++) {
                ModelLoader<A, ?> modelLoader = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i);
                if (modelLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a2)) {
                    if (z) {
                        list = new ArrayList<>(size - i);
                        z = false;
                    }
                    list.add(modelLoader);
                }
            }
            if (!list.isEmpty()) {
                return list;
            }
            throw new Registry.NoModelLoaderAvailableException(a2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        throw new Registry.NoModelLoaderAvailableException(a2);
    }

    @NonNull
    public synchronized List<Class<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls) {
        return this.f4647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
    }

    public synchronized <Model, Data> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        this.f4647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, modelLoaderFactory);
        this.f4646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public ModelLoaderRegistry(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
        this.f4646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ModelLoaderCache();
        this.f4647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = multiModelLoaderFactory;
    }
}
