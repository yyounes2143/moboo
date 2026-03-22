package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MultiModelLoader<Model, Data> implements ModelLoader<Model, Data> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f4650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ModelLoader<Model, Data>> f4651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class MultiFetcher<Data> implements DataFetcher<Data>, DataFetcher.DataCallback<Data> {

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4652Wwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<Throwable> f4653Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DataFetcher.DataCallback<? super Data> f4654Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Priority f4655Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4656Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Pools.Pool<List<Throwable>> f4657Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<DataFetcher<Data>> f4658Wwwwwwwwwwwwwwwwwwwwwwwww;

        public MultiFetcher(@NonNull List<DataFetcher<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.f4657Wwwwwwwwwwwwwwwwwwwwwwww = pool;
            Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
            this.f4658Wwwwwwwwwwwwwwwwwwwwwwwww = list;
            this.f4656Wwwwwwwwwwwwwwwwwwwwwww = 0;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f4652Wwwwwwwwwwwwwwwwwww) {
                return;
            }
            if (this.f4656Wwwwwwwwwwwwwwwwwwwwwww < this.f4658Wwwwwwwwwwwwwwwwwwwwwwwww.size() - 1) {
                this.f4656Wwwwwwwwwwwwwwwwwwwwwww++;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4655Wwwwwwwwwwwwwwwwwwwwww, this.f4654Wwwwwwwwwwwwwwwwwwwww);
                return;
            }
            Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4653Wwwwwwwwwwwwwwwwwwww);
            this.f4654Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GlideException("Fetch failed", new ArrayList(this.f4653Wwwwwwwwwwwwwwwwwwww)));
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Data data) {
            if (data != null) {
                this.f4654Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(data);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            this.f4655Wwwwwwwwwwwwwwwwwwwwww = priority;
            this.f4654Wwwwwwwwwwwwwwwwwwwww = dataCallback;
            this.f4653Wwwwwwwwwwwwwwwwwwww = this.f4657Wwwwwwwwwwwwwwwwwwwwwwww.acquire();
            this.f4658Wwwwwwwwwwwwwwwwwwwwwwwww.get(this.f4656Wwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(priority, this);
            if (this.f4652Wwwwwwwwwwwwwwwwwww) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4658Wwwwwwwwwwwwwwwwwwwwwwwww.get(0).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Exception exc) {
            ((List) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4653Wwwwwwwwwwwwwwwwwwww)).add(exc);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            List<Throwable> list = this.f4653Wwwwwwwwwwwwwwwwwwww;
            if (list != null) {
                this.f4657Wwwwwwwwwwwwwwwwwwwwwwww.release(list);
            }
            this.f4653Wwwwwwwwwwwwwwwwwwww = null;
            for (DataFetcher<Data> dataFetcher : this.f4658Wwwwwwwwwwwwwwwwwwwwwwwww) {
                dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4658Wwwwwwwwwwwwwwwwwwwwwwwww.get(0).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
            this.f4652Wwwwwwwwwwwwwwwwwww = true;
            for (DataFetcher<Data> dataFetcher : this.f4658Wwwwwwwwwwwwwwwwwwwwwwwww) {
                dataFetcher.cancel();
            }
        }
    }

    public MultiModelLoader(@NonNull List<ModelLoader<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.f4651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f4650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = pool;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model, int i, int i2, @NonNull Options options) {
        ModelLoader.LoadData<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        int size = this.f4651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        ArrayList arrayList = new ArrayList(size);
        Key key = null;
        for (int i3 = 0; i3 < size; i3++) {
            ModelLoader<Model, Data> modelLoader = this.f4651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i3);
            if (modelLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(model) && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = modelLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(model, i, i2, options)) != null) {
                key = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
        if (arrayList.isEmpty() || key == null) {
            return null;
        }
        return new ModelLoader.LoadData<>(key, new MultiFetcher(arrayList, this.f4650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model) {
        for (ModelLoader<Model, Data> modelLoader : this.f4651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (modelLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f4651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toArray()) + AbstractJsonLexerKt.END_OBJ;
    }
}
