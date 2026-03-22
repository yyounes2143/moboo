package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.data.mediastore.ThumbFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MediaStoreVideoThumbLoader implements ModelLoader<Uri, InputStream> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Factory implements ModelLoaderFactory<Uri, InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Factory(Context context) {
            this.f4697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaStoreVideoThumbLoader(this.f4697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public MediaStoreVideoThumbLoader(Context context) {
        this.f4696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Options options) {
        Long l = (Long) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VideoDecoder.f4840Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (l != null && l.longValue() == -1) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri) {
        return MediaStoreUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    @Nullable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        if (MediaStoreUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(options)) {
            return new ModelLoader.LoadData<>(new ObjectKey(uri), ThumbFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, uri));
        }
        return null;
    }
}
