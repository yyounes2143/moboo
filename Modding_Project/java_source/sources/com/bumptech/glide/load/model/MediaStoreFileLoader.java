package com.bumptech.glide.load.model;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileNotFoundException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class MediaStoreFileLoader implements ModelLoader<Uri, File> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Factory implements ModelLoaderFactory<Uri, File> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4633Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Factory(Context context) {
            this.f4633Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, File> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaStoreFileLoader(this.f4633Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public MediaStoreFileLoader(Context context) {
        this.f4632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri) {
        return MediaStoreUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<File> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(uri), new FilePathFetcher(this.f4632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, uri));
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class FilePathFetcher implements DataFetcher<File> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final String[] f4634Wwwwwwwwwwwwwwwwwwwwwww = {"_data"};

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Uri f4635Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4636Wwwwwwwwwwwwwwwwwwwwwwwww;

        public FilePathFetcher(Context context, Uri uri) {
            this.f4636Wwwwwwwwwwwwwwwwwwwwwwwww = context;
            this.f4635Wwwwwwwwwwwwwwwwwwwwwwww = uri;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super File> dataCallback) {
            Cursor query = this.f4636Wwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().query(this.f4635Wwwwwwwwwwwwwwwwwwwwwwww, f4634Wwwwwwwwwwwwwwwwwwwwwww, null, null, null);
            String str = null;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                    query.close();
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
            if (TextUtils.isEmpty(str)) {
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FileNotFoundException("Failed to find file path for: " + this.f4635Wwwwwwwwwwwwwwwwwwwwwwww));
                return;
            }
            dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(new File(str));
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<File> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }
    }
}
