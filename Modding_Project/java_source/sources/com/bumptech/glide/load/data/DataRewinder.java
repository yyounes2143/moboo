package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface DataRewinder<T> {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Factory<T> {
        @NonNull
        DataRewinder<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t);

        @NonNull
        Class<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @NonNull
    T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;
}
