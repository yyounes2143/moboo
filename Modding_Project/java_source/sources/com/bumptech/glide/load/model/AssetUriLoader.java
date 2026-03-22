package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.FileDescriptorAssetPathFetcher;
import com.bumptech.glide.load.data.StreamAssetPathFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AssetUriLoader<Data> implements ModelLoader<Uri, Data> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f4583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 22;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AssetFetcherFactory<Data> f4584Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AssetManager f4585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface AssetFetcherFactory<Data> {
        DataFetcher<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AssetManager assetManager, String str);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class FileDescriptorFactory implements ModelLoaderFactory<Uri, AssetFileDescriptor>, AssetFetcherFactory<AssetFileDescriptor> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AssetManager f4586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public FileDescriptorFactory(AssetManager assetManager) {
            this.f4586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = assetManager;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new AssetUriLoader(this.f4586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this);
        }

        @Override // com.bumptech.glide.load.model.AssetUriLoader.AssetFetcherFactory
        public DataFetcher<AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AssetManager assetManager, String str) {
            return new FileDescriptorAssetPathFetcher(assetManager, str);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class StreamFactory implements ModelLoaderFactory<Uri, InputStream>, AssetFetcherFactory<InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AssetManager f4587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public StreamFactory(AssetManager assetManager) {
            this.f4587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = assetManager;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new AssetUriLoader(this.f4587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this);
        }

        @Override // com.bumptech.glide.load.model.AssetUriLoader.AssetFetcherFactory
        public DataFetcher<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AssetManager assetManager, String str) {
            return new StreamAssetPathFetcher(assetManager, str);
        }
    }

    public AssetUriLoader(AssetManager assetManager, AssetFetcherFactory<Data> assetFetcherFactory) {
        this.f4585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = assetManager;
        this.f4584Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = assetFetcherFactory;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri) {
        if (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(uri), this.f4584Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, uri.toString().substring(f4583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)));
    }
}
