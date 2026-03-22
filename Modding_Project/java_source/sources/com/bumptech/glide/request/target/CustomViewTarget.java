package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.R;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class CustomViewTarget<T extends View, Z> implements Target<Z> {
    @IdRes

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f5105Wwwwwwwwwwwwwwwwwwww = R.id.glide_custom_view_target_tag;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5106Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5107Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public View.OnAttachStateChangeListener f5108Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f5109Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SizeDeterminer f5110Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.request.target.CustomViewTarget$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnAttachStateChangeListener {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ CustomViewTarget f5111Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f5111Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.f5111Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class SizeDeterminer {
        @Nullable
        @VisibleForTesting

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static Integer f5112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public SizeDeterminerLayoutListener f5113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f5114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<SizeReadyCallback> f5115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final View f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public static final class SizeDeterminerLayoutListener implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final WeakReference<SizeDeterminer> f5117Wwwwwwwwwwwwwwwwwwwwwwwww;

            public SizeDeterminerLayoutListener(@NonNull SizeDeterminer sizeDeterminer) {
                this.f5117Wwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(sizeDeterminer);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                SizeDeterminer sizeDeterminer = this.f5117Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (sizeDeterminer != null) {
                    sizeDeterminer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return true;
                }
                return true;
            }
        }

        public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
            if (f5112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                Display defaultDisplay = ((WindowManager) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f5112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f5112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.intValue();
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
            this.f5115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(sizeReadyCallback);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
            ArrayList arrayList = new ArrayList(this.f5115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                ((SizeReadyCallback) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2);
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(i) && Wwwwwwwwwwwwwwwwwwwwwwwwwww(i2)) {
                return true;
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            if (i <= 0 && i != Integer.MIN_VALUE) {
                return false;
            }
            return true;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int i;
            int paddingLeft = this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPaddingLeft() + this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getLayoutParams();
            if (layoutParams != null) {
                i = layoutParams.width;
            } else {
                i = 0;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getWidth(), i, paddingLeft);
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int i;
            int paddingTop = this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPaddingTop() + this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getLayoutParams();
            if (layoutParams != null) {
                i = layoutParams.height;
            } else {
                i = 0;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHeight(), i, paddingTop);
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f5114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContext());
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                sizeReadyCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return;
            }
            if (!this.f5115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(sizeReadyCallback)) {
                this.f5115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(sizeReadyCallback);
            }
            if (this.f5113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                ViewTreeObserver viewTreeObserver = this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getViewTreeObserver();
                SizeDeterminerLayoutListener sizeDeterminerLayoutListener = new SizeDeterminerLayoutListener(this);
                this.f5113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sizeDeterminerLayoutListener;
                viewTreeObserver.addOnPreDrawListener(sizeDeterminerLayoutListener);
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            ViewTreeObserver viewTreeObserver = this.f5116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f5113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            this.f5113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f5115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (!this.f5115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
    }

    private void Wwwwwwwwwwwwwwwwwww(@Nullable Object obj) {
        this.f5109Wwwwwwwwwwwwwwwwwwwwwwww.setTag(f5105Wwwwwwwwwwwwwwwwwwww, obj);
    }

    private void Wwwwwwwwwwwwwwwwwwwwwwww() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f5108Wwwwwwwwwwwwwwwwwwwwwww;
        if (onAttachStateChangeListener != null && this.f5106Wwwwwwwwwwwwwwwwwwwww) {
            this.f5109Wwwwwwwwwwwwwwwwwwwwwwww.removeOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f5106Wwwwwwwwwwwwwwwwwwwww = false;
        }
    }

    private void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f5108Wwwwwwwwwwwwwwwwwwwwwww;
        if (onAttachStateChangeListener != null && !this.f5106Wwwwwwwwwwwwwwwwwwwww) {
            this.f5109Wwwwwwwwwwwwwwwwwwwwwwww.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f5106Wwwwwwwwwwwwwwwwwwwww = true;
        }
    }

    @Nullable
    private Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5109Wwwwwwwwwwwwwwwwwwwwwwww.getTag(f5105Wwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwww() {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwww() {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            this.f5107Wwwwwwwwwwwwwwwwwwwwww = true;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.clear();
            this.f5107Wwwwwwwwwwwwwwwwwwwwww = false;
        }
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable);

    @Override // com.bumptech.glide.request.target.Target
    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f5110Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sizeReadyCallback);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request) {
        Wwwwwwwwwwwwwwwwwww(request);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        this.f5110Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwww(drawable);
        if (!this.f5107Wwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwww(drawable);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f5110Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(sizeReadyCallback);
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public final Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Request) {
                return (Request) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
        }
        return null;
    }

    public String toString() {
        return "Target for: " + this.f5109Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
    }
}
