package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface DataFetcher<T> {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface DataCallback<T> {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable T t);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Exception exc);
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataCallback<? super T> dataCallback);

    @NonNull
    DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @NonNull
    Class<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void cancel();
}
