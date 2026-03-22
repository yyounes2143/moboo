package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class AssetPathFetcher<T> implements DataFetcher<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public T f4188Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AssetManager f4189Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f4190Wwwwwwwwwwwwwwwwwwwwwwwww;

    public AssetPathFetcher(AssetManager assetManager, String str) {
        this.f4189Wwwwwwwwwwwwwwwwwwwwwwww = assetManager;
        this.f4190Wwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    public abstract T Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(AssetManager assetManager, String str) throws IOException;

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super T> dataCallback) {
        try {
            T Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4189Wwwwwwwwwwwwwwwwwwwwwwww, this.f4190Wwwwwwwwwwwwwwwwwwwwwwwww);
            this.f4188Wwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (IOException e) {
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
        T t = this.f4188Wwwwwwwwwwwwwwwwwwwwwww;
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
