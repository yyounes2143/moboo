package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface DiskCache {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Factory {
        @Nullable
        DiskCache build();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Writer {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull File file);
    }

    @Nullable
    File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, Writer writer);

    void clear();
}
