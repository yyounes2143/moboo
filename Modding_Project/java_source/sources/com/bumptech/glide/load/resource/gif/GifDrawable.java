package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.resource.gif.GifFrameLoader;
import com.bumptech.glide.util.Preconditions;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class GifDrawable extends Drawable implements GifFrameLoader.FrameCallback, Animatable, Animatable2Compat {

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public List<Animatable2Compat.AnimationCallback> f4874Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public Rect f4875Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Paint f4876Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4877Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4878Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4879Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4880Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4881Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4882Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4883Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GifState f4884Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class GifState extends Drawable.ConstantState {
        @VisibleForTesting

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final GifFrameLoader f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public GifState(GifFrameLoader gifFrameLoader) {
            this.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = gifFrameLoader;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new GifDrawable(this);
        }
    }

    public GifDrawable(Context context, GifDecoder gifDecoder, Transformation<Bitmap> transformation, int i, int i2, Bitmap bitmap) {
        this(new GifState(new GifFrameLoader(Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context), gifDecoder, i, i2, transformation, bitmap)));
    }

    public final void Wwwwwwwwwwwwwwwwwwww() {
        this.f4883Wwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(this);
    }

    public final void Wwwwwwwwwwwwwwwwwwwww() {
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(!this.f4881Wwwwwwwwwwwwwwwwwwwwww, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 1) {
            invalidateSelf();
        } else if (!this.f4883Wwwwwwwwwwwwwwwwwwwwwwww) {
            this.f4883Wwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww(this);
            invalidateSelf();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(transformation, bitmap);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        this.f4879Wwwwwwwwwwwwwwwwwwww = 0;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4881Wwwwwwwwwwwwwwwwwwwwww = true;
        this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        List<Animatable2Compat.AnimationCallback> list = this.f4874Wwwwwwwwwwwwwww;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                this.f4874Wwwwwwwwwwwwwww.get(i).onAnimationEnd(this);
            }
        }
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final Paint Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4876Wwwwwwwwwwwwwwwww == null) {
            this.f4876Wwwwwwwwwwwwwwwww = new Paint(2);
        }
        return this.f4876Wwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final Rect Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4875Wwwwwwwwwwwwwwww == null) {
            this.f4875Wwwwwwwwwwwwwwww = new Rect();
        }
        return this.f4875Wwwwwwwwwwwwwwww;
    }

    public ByteBuffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final Drawable.Callback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    @Override // com.bumptech.glide.load.resource.gif.GifFrameLoader.FrameCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() - 1) {
            this.f4879Wwwwwwwwwwwwwwwwwwww++;
        }
        int i = this.f4878Wwwwwwwwwwwwwwwwwww;
        if (i != -1 && this.f4879Wwwwwwwwwwwwwwwwwwww >= i) {
            Wwwwwwwwwwwwwwwwwwwwwwwww();
            stop();
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.f4874Wwwwwwwwwwwwwww;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f4881Wwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        if (this.f4877Wwwwwwwwwwwwwwwwww) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f4877Wwwwwwwwwwwwwwwwww = false;
        }
        canvas.drawBitmap(this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Rect) null, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww.f4885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f4883Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f4877Wwwwwwwwwwwwwwwwww = true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f4874Wwwwwwwwwwwwwww == null) {
            this.f4874Wwwwwwwwwwwwwww = new ArrayList();
        }
        this.f4874Wwwwwwwwwwwwwww.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(!this.f4881Wwwwwwwwwwwwwwwwwwwwww, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f4880Wwwwwwwwwwwwwwwwwwwww = z;
        if (!z) {
            Wwwwwwwwwwwwwwwwwwww();
        } else if (this.f4882Wwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwww();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f4882Wwwwwwwwwwwwwwwwwwwwwww = true;
        Wwwwwwwwwwwwwwwwwwwwwww();
        if (this.f4880Wwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f4882Wwwwwwwwwwwwwwwwwwwwwww = false;
        Wwwwwwwwwwwwwwwwwwww();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f4874Wwwwwwwwwwwwwww;
        if (list != null && animationCallback != null) {
            return list.remove(animationCallback);
        }
        return false;
    }

    public GifDrawable(GifState gifState) {
        this.f4880Wwwwwwwwwwwwwwwwwwwww = true;
        this.f4878Wwwwwwwwwwwwwwwwwww = -1;
        this.f4884Wwwwwwwwwwwwwwwwwwwwwwwww = (GifState) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(gifState);
    }
}
