package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.data.mediastore.ThumbFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MediaStoreImageThumbLoader implements ModelLoader<Uri, InputStream> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Factory implements ModelLoaderFactory<Uri, InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Factory(Context context) {
            this.f4695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaStoreImageThumbLoader(this.f4695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public MediaStoreImageThumbLoader(Context context) {
        this.f4694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri) {
        return MediaStoreUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        if (MediaStoreUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2)) {
            return new ModelLoader.LoadData<>(new ObjectKey(uri), ThumbFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, uri));
        }
        return null;
    }
}
