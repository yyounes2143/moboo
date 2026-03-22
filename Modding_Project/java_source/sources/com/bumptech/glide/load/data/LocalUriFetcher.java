package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.FileNotFoundException;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class LocalUriFetcher<T> implements DataFetcher<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public T f4212Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ContentResolver f4213Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f4214Wwwwwwwwwwwwwwwwwwwwwwwww;

    public LocalUriFetcher(ContentResolver contentResolver, Uri uri) {
        this.f4213Wwwwwwwwwwwwwwwwwwwwwwww = contentResolver;
        this.f4214Wwwwwwwwwwwwwwwwwwwwwwwww = uri;
    }

    public abstract T Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super T> dataCallback) {
        try {
            T Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4214Wwwwwwwwwwwwwwwwwwwwwwwww, this.f4213Wwwwwwwwwwwwwwwwwwwwwwww);
            this.f4212Wwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (FileNotFoundException e) {
            dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return DataSource.LOCAL;
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(T t) throws IOException;

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        T t = this.f4212Wwwwwwwwwwwwwwwwwwwwwww;
        if (t != null) {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t);
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }
}
