package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ResourceLoader<Data> implements ModelLoader<Integer, Data> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Resources f4668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelLoader<Uri, Data> f4669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Integer, AssetFileDescriptor> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Resources f4670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public AssetFileDescriptorFactory(Resources resources) {
            this.f4670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Integer, AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f4670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, multiModelLoaderFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* compiled from: Proguard */
    @Deprecated
    /* loaded from: classes3.dex */
    public static class FileDescriptorFactory implements ModelLoaderFactory<Integer, ParcelFileDescriptor> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Resources f4671Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Integer, ParcelFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f4671Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, multiModelLoaderFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class StreamFactory implements ModelLoaderFactory<Integer, InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Resources f4672Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public StreamFactory(Resources resources) {
            this.f4672Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Integer, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f4672Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, multiModelLoaderFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, InputStream.class));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class UriFactory implements ModelLoaderFactory<Integer, Uri> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Resources f4673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public UriFactory(Resources resources) {
            this.f4673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Integer, Uri> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f4673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, UnitModelLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
    }

    public ResourceLoader(Resources resources, ModelLoader<Uri, Data> modelLoader) {
        this.f4668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resources;
        this.f4669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = modelLoader;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Integer num) {
        return true;
    }

    @Nullable
    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f4668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getResourcePackageName(num.intValue()) + '/' + this.f4668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getResourceTypeName(num.intValue()) + '/' + this.f4668Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<Data> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Integer num, int i, int i2, @NonNull Options options) {
        Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(num);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return this.f4669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i, i2, options);
    }
}
