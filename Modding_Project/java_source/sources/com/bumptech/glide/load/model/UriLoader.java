package com.bumptech.glide.load.model;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.AssetFileDescriptorLocalUriFetcher;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.FileDescriptorLocalUriFetcher;
import com.bumptech.glide.load.data.StreamLocalUriFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class UriLoader<Data> implements ModelLoader<Uri, Data> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f4682Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "content", "android.resource")));

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LocalUriFetcherFactory<Data> f4683Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Uri, AssetFileDescriptor>, LocalUriFetcherFactory<AssetFileDescriptor> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ContentResolver f4684Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public AssetFileDescriptorFactory(ContentResolver contentResolver) {
            this.f4684Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Uri, AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UriLoader(this);
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public DataFetcher<AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            return new AssetFileDescriptorLocalUriFetcher(this.f4684Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, uri);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class FileDescriptorFactory implements ModelLoaderFactory<Uri, ParcelFileDescriptor>, LocalUriFetcherFactory<ParcelFileDescriptor> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ContentResolver f4685Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public FileDescriptorFactory(ContentResolver contentResolver) {
            this.f4685Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, ParcelFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UriLoader(this);
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public DataFetcher<ParcelFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            return new FileDescriptorLocalUriFetcher(this.f4685Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, uri);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface LocalUriFetcherFactory<Data> {
        DataFetcher<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class StreamFactory implements ModelLoaderFactory<Uri, InputStream>, LocalUriFetcherFactory<InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ContentResolver f4686Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public StreamFactory(ContentResolver contentResolver) {
            this.f4686Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UriLoader(this);
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public DataFetcher<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            return new StreamLocalUriFetcher(this.f4686Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, uri);
        }
    }

    public UriLoader(LocalUriFetcherFactory<Data> localUriFetcherFactory) {
        this.f4683Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = localUriFetcherFactory;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri) {
        return f4682Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(uri.getScheme());
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(uri), this.f4683Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri));
    }
}
