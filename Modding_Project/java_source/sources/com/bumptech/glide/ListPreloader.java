package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import java.util.List;
import java.util.Queue;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ListPreloader<T> implements AbsListView.OnScrollListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4017Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4018Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4019Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4020Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4021Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PreloadSizeProvider<T> f4022Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PreloadModelProvider<T> f4023Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestManager f4024Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PreloadTargetQueue f4025Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface PreloadModelProvider<U> {
        @Nullable
        RequestBuilder<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull U u);

        @NonNull
        List<U> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface PreloadSizeProvider<T> {
        @Nullable
        int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t, int i, int i2);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class PreloadTargetQueue {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Queue<PreloadTarget> f4030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PreloadTarget Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
            PreloadTarget poll = this.f4030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.poll();
            this.f4030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.offer(poll);
            poll.f4028Wwwwwwwwwwwwwwwwwwwwwwww = i;
            poll.f4029Wwwwwwwwwwwwwwwwwwwwwwwww = i2;
            return poll;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable T t, int i, int i2) {
        int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        RequestBuilder<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (t == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4022Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t, i, i2)) == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4023Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t)) == null) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Illlllllllllllllllllllllll(this.f4025Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[0], Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[1]));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<T> list, int i, boolean z) {
        int size = list.size();
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i2), i, i2);
            }
            return;
        }
        for (int i3 = size - 1; i3 >= 0; i3--) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i3), i, i3);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, boolean z) {
        int i2;
        if (this.f4017Wwwwwwwwwwwwwwwwwwwwwwwww != z) {
            this.f4017Wwwwwwwwwwwwwwwwwwwwwwwww = z;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (z) {
            i2 = this.f4026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            i2 = -this.f4026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2 + i);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        int min;
        int i3;
        if (i < i2) {
            i3 = Math.max(this.f4021Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, i);
            min = i2;
        } else {
            min = Math.min(this.f4020Wwwwwwwwwwwwwwwwwwwwwwwwwwww, i);
            i3 = i2;
        }
        int min2 = Math.min(this.f4018Wwwwwwwwwwwwwwwwwwwwwwwwww, min);
        int min3 = Math.min(this.f4018Wwwwwwwwwwwwwwwwwwwwwwwwww, Math.max(0, i3));
        if (i < i2) {
            for (int i4 = min3; i4 < min2; i4++) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4023Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i4), i4, true);
            }
        } else {
            for (int i5 = min2 - 1; i5 >= min3; i5--) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4023Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i5), i5, false);
            }
        }
        this.f4020Wwwwwwwwwwwwwwwwwwwwwwwwwwww = min3;
        this.f4021Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = min2;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        for (int i = 0; i < this.f4025Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size(); i++) {
            this.f4024Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(this.f4025Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, 0));
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.f4018Wwwwwwwwwwwwwwwwwwwwwwwwww == 0 && i3 == 0) {
            return;
        }
        this.f4018Wwwwwwwwwwwwwwwwwwwwwwwwww = i3;
        int i4 = this.f4019Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i > i4) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2 + i, true);
        } else if (i < i4) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, false);
        }
        this.f4019Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class PreloadTarget implements Target<Object> {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Request f4027Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4028Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4029Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
            sizeReadyCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4028Wwwwwwwwwwwwwwwwwwwwwwww, this.f4029Wwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request) {
            this.f4027Wwwwwwwwwwwwwwwwwwwwwww = request;
        }

        @Override // com.bumptech.glide.request.target.Target
        @Nullable
        public Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4027Wwwwwwwwwwwwwwwwwwwwwww;
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

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
