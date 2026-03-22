package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ByteBufferFileLoader implements ModelLoader<File, ByteBuffer> {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Factory implements ModelLoaderFactory<File, ByteBuffer> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<File, ByteBuffer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ByteBufferFileLoader();
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull File file) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<ByteBuffer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull File file, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(file), new ByteBufferFetcher(file));
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ByteBufferFetcher implements DataFetcher<ByteBuffer> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final File f4593Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ByteBufferFetcher(File file) {
            this.f4593Wwwwwwwwwwwwwwwwwwwwwwwww = file;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super ByteBuffer> dataCallback) {
            try {
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4593Wwwwwwwwwwwwwwwwwwwwwwwww));
            } catch (IOException e) {
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<ByteBuffer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }
    }
}
