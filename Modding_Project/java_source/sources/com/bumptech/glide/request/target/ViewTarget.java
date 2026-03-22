package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.CallSuper;
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
@Deprecated
/* loaded from: classes3.dex */
public abstract class ViewTarget<T extends View, Z> extends BaseTarget<Z> {

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f5138Wwwwwwwwwwwwwwwwww = R.id.glide_custom_view_target_tag;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5139Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5140Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5141Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public View.OnAttachStateChangeListener f5142Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SizeDeterminer f5143Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f5144Wwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.request.target.ViewTarget$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnAttachStateChangeListener {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ ViewTarget f5145Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f5145Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.f5145Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class SizeDeterminer {
        @Nullable
        @VisibleForTesting

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static Integer f5146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public SizeDeterminerLayoutListener f5147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f5148Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<SizeReadyCallback> f5149Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final View f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public static final class SizeDeterminerLayoutListener implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final WeakReference<SizeDeterminer> f5151Wwwwwwwwwwwwwwwwwwwwwwwww;

            public SizeDeterminerLayoutListener(@NonNull SizeDeterminer sizeDeterminer) {
                this.f5151Wwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(sizeDeterminer);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                SizeDeterminer sizeDeterminer = this.f5151Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (sizeDeterminer != null) {
                    sizeDeterminer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return true;
                }
                return true;
            }
        }

        public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
            if (f5146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                Display defaultDisplay = ((WindowManager) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f5146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f5146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.intValue();
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
            this.f5149Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(sizeReadyCallback);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
            ArrayList arrayList = new ArrayList(this.f5149Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
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
            int paddingLeft = this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPaddingLeft() + this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getLayoutParams();
            if (layoutParams != null) {
                i = layoutParams.width;
            } else {
                i = 0;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getWidth(), i, paddingLeft);
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int i;
            int paddingTop = this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPaddingTop() + this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getLayoutParams();
            if (layoutParams != null) {
                i = layoutParams.height;
            } else {
                i = 0;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHeight(), i, paddingTop);
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f5148Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContext());
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                sizeReadyCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return;
            }
            if (!this.f5149Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(sizeReadyCallback)) {
                this.f5149Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(sizeReadyCallback);
            }
            if (this.f5147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                ViewTreeObserver viewTreeObserver = this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getViewTreeObserver();
                SizeDeterminerLayoutListener sizeDeterminerLayoutListener = new SizeDeterminerLayoutListener(this);
                this.f5147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sizeDeterminerLayoutListener;
                viewTreeObserver.addOnPreDrawListener(sizeDeterminerLayoutListener);
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            ViewTreeObserver viewTreeObserver = this.f5150Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f5147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            this.f5147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f5149Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (!this.f5149Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
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

    public final void Wwwwwwwwwwwwwwwwwww(@Nullable Object obj) {
        f5139Wwwwwwwwwwwwwwwwwww = true;
        this.f5144Wwwwwwwwwwwwwwwwwwwwwwww.setTag(f5138Wwwwwwwwwwwwwwwwww, obj);
    }

    public void Wwwwwwwwwwwwwwwwwwww() {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwww() {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            this.f5141Wwwwwwwwwwwwwwwwwwwww = true;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.clear();
            this.f5141Wwwwwwwwwwwwwwwwwwwww = false;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f5142Wwwwwwwwwwwwwwwwwwwwww;
        if (onAttachStateChangeListener != null && this.f5140Wwwwwwwwwwwwwwwwwwww) {
            this.f5144Wwwwwwwwwwwwwwwwwwwwwwww.removeOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f5140Wwwwwwwwwwwwwwwwwwww = false;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f5142Wwwwwwwwwwwwwwwwwwwwww;
        if (onAttachStateChangeListener != null && !this.f5140Wwwwwwwwwwwwwwwwwwww) {
            this.f5144Wwwwwwwwwwwwwwwwwwwwwwww.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f5140Wwwwwwwwwwwwwwwwwwww = true;
        }
    }

    @Nullable
    public final Object Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5144Wwwwwwwwwwwwwwwwwwwwwwww.getTag(f5138Wwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.request.target.Target
    @CallSuper
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f5143Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sizeReadyCallback);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request) {
        Wwwwwwwwwwwwwwwwwww(request);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    @CallSuper
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
        this.f5143Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (!this.f5141Wwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    @CallSuper
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
        Wwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.bumptech.glide.request.target.Target
    @CallSuper
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f5143Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(sizeReadyCallback);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    @Nullable
    public Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Object Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            if (Wwwwwwwwwwwwwwwwwwwwwwww2 instanceof Request) {
                return (Request) Wwwwwwwwwwwwwwwwwwwwwwww2;
            }
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        }
        return null;
    }

    @NonNull
    public T getView() {
        return this.f5144Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String toString() {
        return "Target for: " + this.f5144Wwwwwwwwwwwwwwwwwwwwwwww;
    }
}
