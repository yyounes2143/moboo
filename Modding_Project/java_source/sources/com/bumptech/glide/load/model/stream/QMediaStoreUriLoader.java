package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* compiled from: Proguard */
@RequiresApi(29)
/* loaded from: classes3.dex */
public final class QMediaStoreUriLoader<DataT> implements ModelLoader<Uri, DataT> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<DataT> f4698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelLoader<Uri, DataT> f4699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelLoader<File, DataT> f4700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static abstract class Factory<DataT> implements ModelLoaderFactory<Uri, DataT> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<DataT> f4702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4703Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Factory(Context context, Class<DataT> cls) {
            this.f4703Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
            this.f4702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public final ModelLoader<Uri, DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new QMediaStoreUriLoader(this.f4703Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, multiModelLoaderFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File.class, this.f4702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), multiModelLoaderFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri.class, this.f4702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f4702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(29)
    /* loaded from: classes3.dex */
    public static final class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {
        public FileDescriptorFactory(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(29)
    /* loaded from: classes3.dex */
    public static final class InputStreamFactory extends Factory<InputStream> {
        public InputStreamFactory(Context context) {
            super(context, InputStream.class);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class QMediaStoreUriFetcher<DataT> implements DataFetcher<DataT> {

        /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
        public static final String[] f4704Wwwwwwwwwwwwwww = {"_data"};
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile DataFetcher<DataT> f4705Wwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile boolean f4706Wwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<DataT> f4707Wwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Options f4708Wwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f4709Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f4710Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Uri f4711Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ModelLoader<Uri, DataT> f4712Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ModelLoader<File, DataT> f4713Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4714Wwwwwwwwwwwwwwwwwwwwwwwww;

        public QMediaStoreUriFetcher(Context context, ModelLoader<File, DataT> modelLoader, ModelLoader<Uri, DataT> modelLoader2, Uri uri, int i, int i2, Options options, Class<DataT> cls) {
            this.f4714Wwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
            this.f4713Wwwwwwwwwwwwwwwwwwwwwwww = modelLoader;
            this.f4712Wwwwwwwwwwwwwwwwwwwwwww = modelLoader2;
            this.f4711Wwwwwwwwwwwwwwwwwwwwww = uri;
            this.f4710Wwwwwwwwwwwwwwwwwwwww = i;
            this.f4709Wwwwwwwwwwwwwwwwwwww = i2;
            this.f4708Wwwwwwwwwwwwwwwwwww = options;
            this.f4707Wwwwwwwwwwwwwwwwww = cls;
        }

        @NonNull
        public final File Wwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) throws FileNotFoundException {
            Cursor cursor = null;
            try {
                Cursor query = this.f4714Wwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().query(uri, f4704Wwwwwwwwwwwwwww, null, null, null);
                if (query != null && query.moveToFirst()) {
                    String string = query.getString(query.getColumnIndexOrThrow("_data"));
                    if (!TextUtils.isEmpty(string)) {
                        File file = new File(string);
                        query.close();
                        return file;
                    }
                    throw new FileNotFoundException("File path was empty in media store for: " + uri);
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f4714Wwwwwwwwwwwwwwwwwwwwwwwww.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                return true;
            }
            return false;
        }

        @Nullable
        public final DataFetcher<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws FileNotFoundException {
            ModelLoader.LoadData<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            return null;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super DataT> dataCallback) {
            try {
                DataFetcher<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new IllegalArgumentException("Failed to build fetcher for: " + this.f4711Wwwwwwwwwwwwwwwwwwwwww));
                    return;
                }
                this.f4705Wwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                if (this.f4706Wwwwwwwwwwwwwwwww) {
                    cancel();
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(priority, dataCallback);
                }
            } catch (FileNotFoundException e) {
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return DataSource.LOCAL;
        }

        @Nullable
        public final ModelLoader.LoadData<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws FileNotFoundException {
            boolean isExternalStorageLegacy;
            Uri uri;
            isExternalStorageLegacy = Environment.isExternalStorageLegacy();
            if (isExternalStorageLegacy) {
                return this.f4713Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4711Wwwwwwwwwwwwwwwwwwwwww), this.f4710Wwwwwwwwwwwwwwwwwwwww, this.f4709Wwwwwwwwwwwwwwwwwwww, this.f4708Wwwwwwwwwwwwwwwwwww);
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                uri = MediaStore.setRequireOriginal(this.f4711Wwwwwwwwwwwwwwwwwwwwww);
            } else {
                uri = this.f4711Wwwwwwwwwwwwwwwwwwwwww;
            }
            return this.f4712Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri, this.f4710Wwwwwwwwwwwwwwwwwwwww, this.f4709Wwwwwwwwwwwwwwwwwwww, this.f4708Wwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            DataFetcher<DataT> dataFetcher = this.f4705Wwwwwwwwwwwwwwww;
            if (dataFetcher != null) {
                dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4707Wwwwwwwwwwwwwwwwww;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
            this.f4706Wwwwwwwwwwwwwwwww = true;
            DataFetcher<DataT> dataFetcher = this.f4705Wwwwwwwwwwwwwwww;
            if (dataFetcher != null) {
                dataFetcher.cancel();
            }
        }
    }

    public QMediaStoreUriLoader(Context context, ModelLoader<File, DataT> modelLoader, ModelLoader<Uri, DataT> modelLoader2, Class<DataT> cls) {
        this.f4701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        this.f4700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = modelLoader;
        this.f4699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = modelLoader2;
        this.f4698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri) {
        if (Build.VERSION.SDK_INT >= 29 && MediaStoreUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<DataT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(uri), new QMediaStoreUriFetcher(this.f4701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, uri, i, i2, options, this.f4698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }
}
