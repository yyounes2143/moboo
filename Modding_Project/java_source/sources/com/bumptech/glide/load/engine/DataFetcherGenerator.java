package com.bumptech.glide.load.engine;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
interface DataFetcherGenerator {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface FetcherReadyCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, @Nullable Object obj, DataFetcher<?> dataFetcher, DataSource dataSource, Key key2);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, Exception exc, DataFetcher<?> dataFetcher, DataSource dataSource);
    }

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void cancel();
}
