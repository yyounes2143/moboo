package com.bumptech.glide.load.model;

import android.util.Base64;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class DataUrlLoader<Model, Data> implements ModelLoader<Model, Data> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DataDecoder<Data> f4594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface DataDecoder<Data> {
        Data Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) throws IllegalArgumentException;

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Data data) throws IOException;

        Class<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class StreamFactory<Model> implements ModelLoaderFactory<Model, InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DataDecoder<InputStream> f4598Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DataDecoder<InputStream>() { // from class: com.bumptech.glide.load.model.DataUrlLoader.StreamFactory.1
            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf != -1) {
                        if (str.substring(0, indexOf).endsWith(";base64")) {
                            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                        }
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
            }

            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            public Class<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                return InputStream.class;
            }
        };

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Model, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DataUrlLoader(this.f4598Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public DataUrlLoader(DataDecoder<Data> dataDecoder) {
        this.f4594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dataDecoder;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(model), new DataUriFetcher(model.toString(), this.f4594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model) {
        return model.toString().startsWith("data:image");
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class DataUriFetcher<Data> implements DataFetcher<Data> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Data f4595Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DataDecoder<Data> f4596Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f4597Wwwwwwwwwwwwwwwwwwwwwwwww;

        public DataUriFetcher(String str, DataDecoder<Data> dataDecoder) {
            this.f4597Wwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f4596Wwwwwwwwwwwwwwwwwwwwwwww = dataDecoder;
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            try {
                Data Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4596Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4597Wwwwwwwwwwwwwwwwwwwwwwwww);
                this.f4595Wwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (IllegalArgumentException e) {
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            try {
                this.f4596Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4595Wwwwwwwwwwwwwwwwwwwwwww);
            } catch (IOException unused) {
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4596Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }
    }
}
