package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter;
import java.util.concurrent.locks.Lock;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class DrawableToBitmapConverter {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BitmapPool f4771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BitmapPoolAdapter() { // from class: com.bumptech.glide.load.resource.bitmap.DrawableToBitmapConverter.1
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        }
    };

    @Nullable
    public static Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapPool bitmapPool, Drawable drawable, int i, int i2) {
        if (i == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            if (Log.isLoggable("DrawableToBitmap", 5)) {
                drawable.toString();
            }
            return null;
        } else if (i2 == Integer.MIN_VALUE && drawable.getIntrinsicHeight() <= 0) {
            if (Log.isLoggable("DrawableToBitmap", 5)) {
                drawable.toString();
            }
            return null;
        } else {
            if (drawable.getIntrinsicWidth() > 0) {
                i = drawable.getIntrinsicWidth();
            }
            if (drawable.getIntrinsicHeight() > 0) {
                i2 = drawable.getIntrinsicHeight();
            }
            Lock Wwwwwwwwwwwwwwwwwwwwwwwwww2 = TransformationUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.lock();
            Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = bitmapPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, Bitmap.Config.ARGB_8888);
            try {
                Canvas canvas = new Canvas(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                drawable.setBounds(0, 0, i, i2);
                drawable.draw(canvas);
                canvas.setBitmap(null);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } finally {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
            }
        }
    }

    @Nullable
    public static Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapPool bitmapPool, Drawable drawable, int i, int i2) {
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        boolean z = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (!(current instanceof Animatable)) {
            bitmap = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmapPool, current, i, i2);
            z = true;
        } else {
            bitmap = null;
        }
        if (!z) {
            bitmapPool = f4771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return BitmapResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, bitmapPool);
    }
}
