package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.ExifOrientationStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ThumbFetcher implements DataFetcher<InputStream> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public InputStream f4218Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ThumbnailStreamOpener f4219Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f4220Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ImageThumbnailQuery implements ThumbnailQuery {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final String[] f4221Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {"_data"};

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ContentResolver f4222Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ImageThumbnailQuery(ContentResolver contentResolver) {
            this.f4222Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.ThumbnailQuery
        public Cursor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            return this.f4222Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f4221Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class VideoThumbnailQuery implements ThumbnailQuery {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final String[] f4223Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {"_data"};

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ContentResolver f4224Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public VideoThumbnailQuery(ContentResolver contentResolver) {
            this.f4224Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.ThumbnailQuery
        public Cursor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            return this.f4224Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f4223Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    public ThumbFetcher(Uri uri, ThumbnailStreamOpener thumbnailStreamOpener) {
        this.f4220Wwwwwwwwwwwwwwwwwwwwwwwww = uri;
        this.f4219Wwwwwwwwwwwwwwwwwwwwwwww = thumbnailStreamOpener;
    }

    public static ThumbFetcher Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, uri, new VideoThumbnailQuery(context.getContentResolver()));
    }

    public static ThumbFetcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, uri, new ImageThumbnailQuery(context.getContentResolver()));
    }

    public static ThumbFetcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri, ThumbnailQuery thumbnailQuery) {
        return new ThumbFetcher(uri, new ThumbnailStreamOpener(Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), thumbnailQuery, Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), context.getContentResolver()));
    }

    public final InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws FileNotFoundException {
        int i;
        InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4219Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4220Wwwwwwwwwwwwwwwwwwwwwwwww);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            i = this.f4219Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4220Wwwwwwwwwwwwwwwwwwwwwwwww);
        } else {
            i = -1;
        }
        if (i != -1) {
            return new ExifOrientationStream(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super InputStream> dataCallback) {
        try {
            InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4218Wwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
            dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (FileNotFoundException e) {
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
        InputStream inputStream = this.f4218Wwwwwwwwwwwwwwwwwwwwwww;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }
}
