package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class DataCacheWriter<DataType> implements DiskCache.Writer {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Options f4255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DataType f4256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Encoder<DataType> f4257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DataCacheWriter(Encoder<DataType> encoder, DataType datatype, Options options) {
        this.f4257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = encoder;
        this.f4256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = datatype;
        this.f4255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = options;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Writer
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull File file) {
        return this.f4257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, file, this.f4255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
