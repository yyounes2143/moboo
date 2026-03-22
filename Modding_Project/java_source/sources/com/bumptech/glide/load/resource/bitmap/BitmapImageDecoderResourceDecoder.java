package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter;
import com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener;
import java.io.IOException;
/* compiled from: Proguard */
@RequiresApi(api = 28)
/* loaded from: classes3.dex */
public final class BitmapImageDecoderResourceDecoder implements ResourceDecoder<ImageDecoder.Source, Bitmap> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4735Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BitmapPoolAdapter();

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ImageDecoder.Source source, @NonNull Options options) throws IOException {
        return true;
    }

    public Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ImageDecoder.Source source, int i, int i2, @NonNull Options options) throws IOException {
        Bitmap decodeBitmap;
        decodeBitmap = ImageDecoder.decodeBitmap(source, new DefaultOnHeaderDecodedListener(i, i2, options));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            decodeBitmap.getWidth();
            decodeBitmap.getHeight();
        }
        return new BitmapResource(decodeBitmap, this.f4735Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public /* bridge */ /* synthetic */ Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ImageDecoder.Source source, int i, int i2, @NonNull Options options) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(source), i, i2, options);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public /* bridge */ /* synthetic */ boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ImageDecoder.Source source, @NonNull Options options) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(source), options);
    }
}
