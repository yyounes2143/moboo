package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.ModelLoader;
import j$.util.Objects;
import java.io.InputStream;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ResourceUriLoader<DataT> implements ModelLoader<Uri, DataT> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelLoader<Integer, DataT> f4674Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4675Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Uri, AssetFileDescriptor> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4676Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public AssetFileDescriptorFactory(Context context) {
            this.f4676Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceUriLoader(this.f4676Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, multiModelLoaderFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.class, AssetFileDescriptor.class));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class InputStreamFactory implements ModelLoaderFactory<Uri, InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4677Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public InputStreamFactory(Context context) {
            this.f4677Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceUriLoader(this.f4677Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, multiModelLoaderFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.class, InputStream.class));
        }
    }

    public ResourceUriLoader(Context context, ModelLoader<Integer, DataT> modelLoader) {
        this.f4675Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        this.f4674Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = modelLoader;
    }

    public static ModelLoaderFactory<Uri, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return new InputStreamFactory(context);
    }

    public static ModelLoaderFactory<Uri, AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return new AssetFileDescriptorFactory(context);
    }

    @Nullable
    public final ModelLoader.LoadData<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        List<String> pathSegments = uri.getPathSegments();
        String str = pathSegments.get(1);
        int identifier = this.f4675Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getResources().getIdentifier(str, pathSegments.get(0), this.f4675Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName());
        if (identifier == 0) {
            if (Log.isLoggable("ResourceUriLoader", 5)) {
                uri.toString();
                return null;
            }
            return null;
        }
        return this.f4674Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(identifier), i, i2, options);
    }

    @Nullable
    public final ModelLoader.LoadData<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        try {
            int parseInt = Integer.parseInt(uri.getPathSegments().get(0));
            if (parseInt == 0) {
                if (Log.isLoggable("ResourceUriLoader", 5)) {
                    uri.toString();
                }
                return null;
            }
            return this.f4674Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(parseInt), i, i2, options);
        } catch (NumberFormatException unused) {
            if (Log.isLoggable("ResourceUriLoader", 5)) {
                Objects.toString(uri);
            }
            return null;
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri) {
        if ("android.resource".equals(uri.getScheme()) && this.f4675Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName().equals(uri.getAuthority())) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    @Nullable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 1) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(uri, i, i2, options);
        }
        if (pathSegments.size() == 2) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww(uri, i, i2, options);
        }
        if (Log.isLoggable("ResourceUriLoader", 5)) {
            uri.toString();
            return null;
        }
        return null;
    }
}
