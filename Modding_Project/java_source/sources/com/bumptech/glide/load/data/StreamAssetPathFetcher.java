package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class StreamAssetPathFetcher extends AssetPathFetcher<InputStream> {
    public StreamAssetPathFetcher(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.data.AssetPathFetcher
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww */
    public InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }

    @Override // com.bumptech.glide.load.data.AssetPathFetcher
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return InputStream.class;
    }
}
