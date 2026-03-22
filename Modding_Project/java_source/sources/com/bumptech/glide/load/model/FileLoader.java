package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class FileLoader<Data> implements ModelLoader<File, Data> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileOpener<Data> f4610Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Factory<Data> implements ModelLoaderFactory<File, Data> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final FileOpener<Data> f4611Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Factory(FileOpener<Data> fileOpener) {
            this.f4611Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileOpener;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public final ModelLoader<File, Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new FileLoader(this.f4611Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {
        public FileDescriptorFactory() {
            super(new FileOpener<ParcelFileDescriptor>() { // from class: com.bumptech.glide.load.model.FileLoader.FileDescriptorFactory.1
                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
                public ParcelFileDescriptor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws FileNotFoundException {
                    return ParcelFileDescriptor.open(file, 268435456);
                }

                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                    parcelFileDescriptor.close();
                }

                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                public Class<ParcelFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    return ParcelFileDescriptor.class;
                }
            });
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface FileOpener<Data> {
        Data Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws FileNotFoundException;

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Data data) throws IOException;

        Class<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class StreamFactory extends Factory<InputStream> {
        public StreamFactory() {
            super(new FileOpener<InputStream>() { // from class: com.bumptech.glide.load.model.FileLoader.StreamFactory.1
                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
                public InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws FileNotFoundException {
                    return new FileInputStream(file);
                }

                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
                    inputStream.close();
                }

                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                public Class<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    return InputStream.class;
                }
            });
        }
    }

    public FileLoader(FileOpener<Data> fileOpener) {
        this.f4610Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileOpener;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull File file) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull File file, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(file), new FileFetcher(file, this.f4610Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class FileFetcher<Data> implements DataFetcher<Data> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Data f4612Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final FileOpener<Data> f4613Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final File f4614Wwwwwwwwwwwwwwwwwwwwwwwww;

        public FileFetcher(File file, FileOpener<Data> fileOpener) {
            this.f4614Wwwwwwwwwwwwwwwwwwwwwwwww = file;
            this.f4613Wwwwwwwwwwwwwwwwwwwwwwww = fileOpener;
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            try {
                Data Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4613Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4614Wwwwwwwwwwwwwwwwwwwwwwwww);
                this.f4612Wwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (FileNotFoundException e) {
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
            Data data = this.f4612Wwwwwwwwwwwwwwwwwwwwwww;
            if (data != null) {
                try {
                    this.f4613Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4613Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }
    }
}
