package com.bumptech.glide.load.resource.bitmap;

import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.util.Util;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BitmapDrawableResource extends DrawableResource<BitmapDrawable> implements Initializable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4730Wwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<BitmapDrawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(((BitmapDrawable) this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww).getBitmap());
    }

    @Override // com.bumptech.glide.load.resource.drawable.DrawableResource, com.bumptech.glide.load.engine.Initializable
    public void initialize() {
        ((BitmapDrawable) this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww).getBitmap().prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
        this.f4730Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((BitmapDrawable) this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww).getBitmap());
    }
}
