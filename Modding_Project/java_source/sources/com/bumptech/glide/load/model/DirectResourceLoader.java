package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.drawable.DrawableDecoderCompat;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.signature.ObjectKey;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class DirectResourceLoader<DataT> implements ModelLoader<Integer, DataT> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceOpener<DataT> f4600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Integer, AssetFileDescriptor>, ResourceOpener<AssetFileDescriptor> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4602Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public AssetFileDescriptorFactory(Context context) {
            this.f4602Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AssetFileDescriptor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Resources.Theme theme, Resources resources, int i) {
            return resources.openRawResourceFd(i);
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AssetFileDescriptor assetFileDescriptor) throws IOException {
            assetFileDescriptor.close();
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Integer, AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.f4602Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this);
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public Class<AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AssetFileDescriptor.class;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class InputStreamFactory implements ModelLoaderFactory<Integer, InputStream>, ResourceOpener<InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public InputStreamFactory(Context context) {
            this.f4604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Resources.Theme theme, Resources resources, int i) {
            return resources.openRawResource(i);
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
            inputStream.close();
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Integer, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.f4604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this);
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public Class<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return InputStream.class;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface ResourceOpener<DataT> {
        DataT Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Resources.Theme theme, Resources resources, int i);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataT datat) throws IOException;

        Class<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public DirectResourceLoader(Context context, ResourceOpener<DataT> resourceOpener) {
        this.f4601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        this.f4600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceOpener;
    }

    public static ModelLoaderFactory<Integer, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return new InputStreamFactory(context);
    }

    public static ModelLoaderFactory<Integer, Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return new DrawableFactory(context);
    }

    public static ModelLoaderFactory<Integer, AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return new AssetFileDescriptorFactory(context);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Integer num) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Integer num, int i, int i2, @NonNull Options options) {
        Resources resources;
        Resources.Theme theme = (Resources.Theme) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceDrawableDecoder.f4862Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (theme != null) {
            resources = theme.getResources();
        } else {
            resources = this.f4601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getResources();
        }
        return new ModelLoader.LoadData<>(new ObjectKey(num), new ResourceDataFetcher(theme, resources, this.f4600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, num.intValue()));
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ResourceDataFetcher<DataT> implements DataFetcher<DataT> {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DataT f4605Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f4606Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ResourceOpener<DataT> f4607Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Resources f4608Wwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Resources.Theme f4609Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ResourceDataFetcher(@Nullable Resources.Theme theme, Resources resources, ResourceOpener<DataT> resourceOpener, int i) {
            this.f4609Wwwwwwwwwwwwwwwwwwwwwwwww = theme;
            this.f4608Wwwwwwwwwwwwwwwwwwwwwwww = resources;
            this.f4607Wwwwwwwwwwwwwwwwwwwwwww = resourceOpener;
            this.f4606Wwwwwwwwwwwwwwwwwwwwww = i;
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [DataT, java.lang.Object] */
        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super DataT> dataCallback) {
            try {
                DataT Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4607Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4609Wwwwwwwwwwwwwwwwwwwwwwwww, this.f4608Wwwwwwwwwwwwwwwwwwwwwwww, this.f4606Wwwwwwwwwwwwwwwwwwwwww);
                this.f4605Wwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Resources.NotFoundException e) {
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
            DataT datat = this.f4605Wwwwwwwwwwwwwwwwwwwww;
            if (datat != null) {
                try {
                    this.f4607Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(datat);
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4607Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class DrawableFactory implements ModelLoaderFactory<Integer, Drawable>, ResourceOpener<Drawable> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DrawableFactory(Context context) {
            this.f4603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Resources.Theme theme, Resources resources, int i) {
            return DrawableDecoderCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, theme);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Integer, Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.f4603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this);
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public Class<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Drawable.class;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Drawable drawable) throws IOException {
        }
    }
}
