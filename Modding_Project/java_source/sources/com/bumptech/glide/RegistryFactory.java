package com.bumptech.glide;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import androidx.tracing.Trace;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.InputStreamRewinder;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.AssetUriLoader;
import com.bumptech.glide.load.model.ByteArrayLoader;
import com.bumptech.glide.load.model.ByteBufferEncoder;
import com.bumptech.glide.load.model.ByteBufferFileLoader;
import com.bumptech.glide.load.model.DataUrlLoader;
import com.bumptech.glide.load.model.DirectResourceLoader;
import com.bumptech.glide.load.model.FileLoader;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.MediaStoreFileLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ResourceLoader;
import com.bumptech.glide.load.model.ResourceUriLoader;
import com.bumptech.glide.load.model.StreamEncoder;
import com.bumptech.glide.load.model.StringLoader;
import com.bumptech.glide.load.model.UnitModelLoader;
import com.bumptech.glide.load.model.UriLoader;
import com.bumptech.glide.load.model.UrlUriLoader;
import com.bumptech.glide.load.model.stream.HttpGlideUrlLoader;
import com.bumptech.glide.load.model.stream.MediaStoreImageThumbLoader;
import com.bumptech.glide.load.model.stream.MediaStoreVideoThumbLoader;
import com.bumptech.glide.load.model.stream.QMediaStoreUriLoader;
import com.bumptech.glide.load.model.stream.UrlLoader;
import com.bumptech.glide.load.resource.bitmap.BitmapDrawableDecoder;
import com.bumptech.glide.load.resource.bitmap.BitmapDrawableEncoder;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.bitmap.ByteBufferBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.ByteBufferBitmapImageDecoderResourceDecoder;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.ExifInterfaceImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.InputStreamBitmapImageDecoderResourceDecoder;
import com.bumptech.glide.load.resource.bitmap.ParcelFileDescriptorBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.ResourceBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.StreamBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.UnitBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.bytes.ByteBufferRewinder;
import com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.load.resource.drawable.UnitDrawableDecoder;
import com.bumptech.glide.load.resource.file.FileDecoder;
import com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableEncoder;
import com.bumptech.glide.load.resource.gif.GifFrameResourceDecoder;
import com.bumptech.glide.load.resource.gif.StreamGifDecoder;
import com.bumptech.glide.load.resource.transcode.BitmapBytesTranscoder;
import com.bumptech.glide.load.resource.transcode.BitmapDrawableTranscoder;
import com.bumptech.glide.load.resource.transcode.DrawableBytesTranscoder;
import com.bumptech.glide.load.resource.transcode.GifDrawableBytesTranscoder;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.util.GlideSuppliers;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class RegistryFactory {
    public static GlideSuppliers.GlideSupplier<Registry> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final Glide glide, final List<GlideModule> list, @Nullable final AppGlideModule appGlideModule) {
        return new GlideSuppliers.GlideSupplier<Registry>() { // from class: com.bumptech.glide.RegistryFactory.1

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public boolean f4044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public Registry get() {
                if (!this.f4044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    Trace.beginSection("Glide registry");
                    this.f4044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                    try {
                        return RegistryFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Glide.this, list, appGlideModule);
                    } finally {
                        this.f4044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                        Trace.endSection();
                    }
                }
                throw new IllegalStateException("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
            }
        };
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Glide glide, Registry registry, List<GlideModule> list, @Nullable AppGlideModule appGlideModule) {
        for (GlideModule glideModule : list) {
            try {
                glideModule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, glide, registry);
            } catch (AbstractMethodError e) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + glideModule.getClass().getName(), e);
            }
        }
        if (appGlideModule != null) {
            appGlideModule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, glide, registry);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Registry registry, BitmapPool bitmapPool, ArrayPool arrayPool, GlideExperiments glideExperiments) {
        ResourceDecoder byteBufferBitmapDecoder;
        ResourceDecoder streamBitmapDecoder;
        String str;
        Registry registry2;
        registry.Wwwwwwwwwwwwwwwwwwww(new DefaultImageHeaderParser());
        int i = Build.VERSION.SDK_INT;
        if (i >= 27) {
            registry.Wwwwwwwwwwwwwwwwwwww(new ExifInterfaceImageHeaderParser());
        }
        Resources resources = context.getResources();
        List<ImageHeaderParser> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = registry.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ByteBufferGifDecoder byteBufferGifDecoder = new ByteBufferGifDecoder(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, bitmapPool, arrayPool);
        ResourceDecoder<ParcelFileDescriptor, Bitmap> Wwwwwwwwwwwwwwwwwwwwww2 = VideoDecoder.Wwwwwwwwwwwwwwwwwwwwww(bitmapPool);
        Downsampler downsampler = new Downsampler(registry.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), resources.getDisplayMetrics(), bitmapPool, arrayPool);
        if (i >= 28 && glideExperiments.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideBuilder.EnableImageDecoderForBitmaps.class)) {
            streamBitmapDecoder = new InputStreamBitmapImageDecoderResourceDecoder();
            byteBufferBitmapDecoder = new ByteBufferBitmapImageDecoderResourceDecoder();
        } else {
            byteBufferBitmapDecoder = new ByteBufferBitmapDecoder(downsampler);
            streamBitmapDecoder = new StreamBitmapDecoder(downsampler, arrayPool);
        }
        if (i >= 28) {
            registry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Animation", InputStream.class, Drawable.class, AnimatedImageDecoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, arrayPool));
            registry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Animation", ByteBuffer.class, Drawable.class, AnimatedImageDecoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, arrayPool));
        }
        ResourceDrawableDecoder resourceDrawableDecoder = new ResourceDrawableDecoder(context);
        BitmapEncoder bitmapEncoder = new BitmapEncoder(arrayPool);
        BitmapBytesTranscoder bitmapBytesTranscoder = new BitmapBytesTranscoder();
        GifDrawableBytesTranscoder gifDrawableBytesTranscoder = new GifDrawableBytesTranscoder();
        ContentResolver contentResolver = context.getContentResolver();
        registry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer.class, new ByteBufferEncoder()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream.class, new StreamEncoder(arrayPool)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Bitmap", ByteBuffer.class, Bitmap.class, byteBufferBitmapDecoder).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Bitmap", InputStream.class, Bitmap.class, streamBitmapDecoder);
        if (ParcelFileDescriptorRewinder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            str = "Animation";
            registry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new ParcelFileDescriptorBitmapDecoder(downsampler));
        } else {
            str = "Animation";
        }
        String str2 = str;
        registry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Bitmap", ParcelFileDescriptor.class, Bitmap.class, Wwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Bitmap", AssetFileDescriptor.class, Bitmap.class, VideoDecoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmapPool)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.class, Bitmap.class, UnitModelLoader.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Bitmap", Bitmap.class, Bitmap.class, new UnitBitmapDecoder()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.class, bitmapEncoder).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new BitmapDrawableDecoder(resources, byteBufferBitmapDecoder)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("BitmapDrawable", InputStream.class, BitmapDrawable.class, new BitmapDrawableDecoder(resources, streamBitmapDecoder)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new BitmapDrawableDecoder(resources, Wwwwwwwwwwwwwwwwwwwwww2)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapDrawable.class, new BitmapDrawableEncoder(bitmapPool, bitmapEncoder)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, InputStream.class, GifDrawable.class, new StreamGifDecoder(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, byteBufferGifDecoder, arrayPool)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, ByteBuffer.class, GifDrawable.class, byteBufferGifDecoder).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GifDrawable.class, new GifDrawableEncoder()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GifDecoder.class, GifDecoder.class, UnitModelLoader.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Bitmap", GifDecoder.class, Bitmap.class, new GifFrameResourceDecoder(bitmapPool)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, Drawable.class, resourceDrawableDecoder).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, Bitmap.class, new ResourceBitmapDecoder(resourceDrawableDecoder, bitmapPool)).Wwwwwwwwwwwwwwwwwww(new ByteBufferRewinder.Factory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File.class, ByteBuffer.class, new ByteBufferFileLoader.Factory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File.class, InputStream.class, new FileLoader.StreamFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File.class, File.class, new FileDecoder()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File.class, ParcelFileDescriptor.class, new FileLoader.FileDescriptorFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File.class, File.class, UnitModelLoader.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwww(new InputStreamRewinder.Factory(arrayPool));
        if (ParcelFileDescriptorRewinder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            registry2 = registry;
            registry2.Wwwwwwwwwwwwwwwwwww(new ParcelFileDescriptorRewinder.Factory());
        } else {
            registry2 = registry;
        }
        ModelLoaderFactory<Integer, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwww3 = DirectResourceLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        ModelLoaderFactory<Integer, AssetFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DirectResourceLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        ModelLoaderFactory<Integer, Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DirectResourceLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        Class cls = Integer.TYPE;
        registry2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, InputStream.class, Wwwwwwwwwwwwwwwwwwwwwwwwwwww3).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.class, InputStream.class, Wwwwwwwwwwwwwwwwwwwwwwwwwwww3).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, AssetFileDescriptor.class, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.class, AssetFileDescriptor.class, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, Drawable.class, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.class, Drawable.class, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, InputStream.class, ResourceUriLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, AssetFileDescriptor.class, ResourceUriLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context));
        ResourceLoader.UriFactory uriFactory = new ResourceLoader.UriFactory(resources);
        ResourceLoader.AssetFileDescriptorFactory assetFileDescriptorFactory = new ResourceLoader.AssetFileDescriptorFactory(resources);
        ResourceLoader.StreamFactory streamFactory = new ResourceLoader.StreamFactory(resources);
        registry2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.class, Uri.class, uriFactory).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, Uri.class, uriFactory).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.class, AssetFileDescriptor.class, assetFileDescriptorFactory).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, AssetFileDescriptor.class, assetFileDescriptorFactory).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.class, InputStream.class, streamFactory).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, InputStream.class, streamFactory);
        registry2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String.class, InputStream.class, new DataUrlLoader.StreamFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, InputStream.class, new DataUrlLoader.StreamFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String.class, InputStream.class, new StringLoader.StreamFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String.class, ParcelFileDescriptor.class, new StringLoader.FileDescriptorFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String.class, AssetFileDescriptor.class, new StringLoader.AssetFileDescriptorFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, InputStream.class, new AssetUriLoader.StreamFactory(context.getAssets())).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, AssetFileDescriptor.class, new AssetUriLoader.FileDescriptorFactory(context.getAssets())).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, InputStream.class, new MediaStoreImageThumbLoader.Factory(context)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, InputStream.class, new MediaStoreVideoThumbLoader.Factory(context));
        if (i >= 29) {
            registry2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, InputStream.class, new QMediaStoreUriLoader.InputStreamFactory(context));
            registry2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, ParcelFileDescriptor.class, new QMediaStoreUriLoader.FileDescriptorFactory(context));
        }
        registry2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, InputStream.class, new UriLoader.StreamFactory(contentResolver)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, ParcelFileDescriptor.class, new UriLoader.FileDescriptorFactory(contentResolver)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, AssetFileDescriptor.class, new UriLoader.AssetFileDescriptorFactory(contentResolver)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, InputStream.class, new UrlUriLoader.StreamFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(URL.class, InputStream.class, new UrlLoader.StreamFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, File.class, new MediaStoreFileLoader.Factory(context)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideUrl.class, InputStream.class, new HttpGlideUrlLoader.Factory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[].class, ByteBuffer.class, new ByteArrayLoader.ByteBufferFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[].class, InputStream.class, new ByteArrayLoader.StreamFactory()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, Uri.class, UnitModelLoader.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Drawable.class, Drawable.class, UnitModelLoader.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Drawable.class, Drawable.class, new UnitDrawableDecoder()).Wwwwwwwwwwwwwwwwww(Bitmap.class, BitmapDrawable.class, new BitmapDrawableTranscoder(resources)).Wwwwwwwwwwwwwwwwww(Bitmap.class, byte[].class, bitmapBytesTranscoder).Wwwwwwwwwwwwwwwwww(Drawable.class, byte[].class, new DrawableBytesTranscoder(bitmapPool, bitmapBytesTranscoder, gifDrawableBytesTranscoder)).Wwwwwwwwwwwwwwwwww(GifDrawable.class, byte[].class, gifDrawableBytesTranscoder);
        ResourceDecoder<ByteBuffer, Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoDecoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmapPool);
        registry2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer.class, Bitmap.class, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        registry2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer.class, BitmapDrawable.class, new BitmapDrawableDecoder(resources, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
    }

    public static Registry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Glide glide, List<GlideModule> list, @Nullable AppGlideModule appGlideModule) {
        BitmapPool Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ArrayPool Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Context applicationContext = glide.Wwwwwwwwwwwwwwwwwwwwwwwww().getApplicationContext();
        GlideExperiments Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = glide.Wwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Registry registry = new Registry();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext, registry, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext, glide, registry, list, appGlideModule);
        return registry;
    }
}
