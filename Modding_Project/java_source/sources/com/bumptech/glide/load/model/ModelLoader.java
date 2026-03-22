package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.util.Preconditions;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface ModelLoader<Model, Data> {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class LoadData<Data> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DataFetcher<Data> f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Key> f4644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Key f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public LoadData(@NonNull Key key, @NonNull DataFetcher<Data> dataFetcher) {
            this(key, Collections.EMPTY_LIST, dataFetcher);
        }

        public LoadData(@NonNull Key key, @NonNull List<Key> list, @NonNull DataFetcher<Data> dataFetcher) {
            this.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Key) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
            this.f4644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (List) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
            this.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (DataFetcher) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataFetcher);
        }
    }

    @Nullable
    LoadData<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model, int i, int i2, @NonNull Options options);

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model);
}
