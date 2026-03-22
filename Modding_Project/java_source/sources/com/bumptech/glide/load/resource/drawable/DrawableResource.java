package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.Preconditions;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class DrawableResource<T extends Drawable> implements Resource<T>, Initializable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f4861Wwwwwwwwwwwwwwwwwwwwwwwww;

    public DrawableResource(T t) {
        this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww = (T) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final T get() {
        Drawable.ConstantState constantState = this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww.getConstantState();
        if (constantState == null) {
            return this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return (T) constantState.newDrawable();
    }

    public void initialize() {
        T t = this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (t instanceof GifDrawable) {
            ((GifDrawable) t).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().prepareToDraw();
        }
    }
}
