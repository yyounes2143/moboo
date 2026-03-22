package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class UnitModelLoader<Model> implements ModelLoader<Model, Model> {
    private static final UnitModelLoader<?> INSTANCE = new UnitModelLoader<>();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Factory<Model> implements ModelLoaderFactory<Model, Model> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Factory<?> f4680Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Factory<>();

        public static <T> Factory<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return (Factory<T>) f4680Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Model, Model> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return UnitModelLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static <T> UnitModelLoader<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (UnitModelLoader<T>) INSTANCE;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Model> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(model), new UnitFetcher(model));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model) {
        return true;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class UnitFetcher<Model> implements DataFetcher<Model> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Model f4681Wwwwwwwwwwwwwwwwwwwwwwwww;

        public UnitFetcher(Model model) {
            this.f4681Wwwwwwwwwwwwwwwwwwwwwwwww = model;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Model> dataCallback) {
            dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((Model) this.f4681Wwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Model> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return (Class<Model>) this.f4681Wwwwwwwwwwwwwwwwwwwwwwwww.getClass();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }
    }
}
