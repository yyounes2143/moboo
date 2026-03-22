package com.bumptech.glide.request.target;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.util.Preconditions;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class FixedSizeDrawable extends Drawable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5118Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public State f5119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Drawable f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RectF f5121Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RectF f5122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Matrix f5123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class State extends Drawable.ConstantState {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Drawable.ConstantState f5126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public State(State state) {
            this(state.f5126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, state.f5125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, state.f5124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new FixedSizeDrawable(this, this.f5126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.newDrawable());
        }

        public State(Drawable.ConstantState constantState, int i, int i2) {
            this.f5126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = constantState;
            this.f5125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f5124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new FixedSizeDrawable(this, this.f5126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.newDrawable(resources));
        }
    }

    public FixedSizeDrawable(Drawable drawable, int i, int i2) {
        this(new State(drawable.getConstantState(), i, i2), drawable);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f5123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setRectToRect(this.f5122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f5121Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Matrix.ScaleToFit.CENTER);
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        canvas.concat(this.f5123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.draw(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(19)
    public int getAlpha() {
        return this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.Callback getCallback() {
        return this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getCallback();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f5119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f5119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f5119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        return this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f5118Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && super.mutate() == this) {
            this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.mutate();
            this.f5119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new State(this.f5119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f5118Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(@NonNull Runnable runnable, long j) {
        super.scheduleSelf(runnable, j);
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.f5121Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(i, i2, i3, i4);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i, @NonNull PorterDuff.Mode mode) {
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated
    public void setDither(boolean z) {
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(@NonNull Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.unscheduleSelf(runnable);
    }

    public FixedSizeDrawable(State state, Drawable drawable) {
        this.f5119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (State) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(state);
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Drawable) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.f5123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Matrix();
        this.f5122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new RectF(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.f5121Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new RectF();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f5120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(@NonNull Rect rect) {
        super.setBounds(rect);
        this.f5121Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(rect);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
