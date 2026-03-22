package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
interface LruPoolStrategy {
    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap);

    @Nullable
    Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap);

    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config);

    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap);

    @Nullable
    Bitmap removeLast();
}
