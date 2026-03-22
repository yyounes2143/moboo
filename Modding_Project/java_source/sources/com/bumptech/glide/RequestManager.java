package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.manager.TargetTracker;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomViewTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RequestManager implements ComponentCallbacks2, LifecycleListener, ModelTypes<RequestBuilder<Drawable>> {

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4065Wwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestOptions f4066Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CopyOnWriteArrayList<RequestListener<Object>> f4067Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ConnectivityMonitor f4068Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Runnable f4069Wwwwwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TargetTracker f4070Wwwwwwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestManagerTreeNode f4071Wwwwwwwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestTracker f4072Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lifecycle f4073Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4074Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Glide f4075Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static final RequestOptions f4064Wwwwwwwwwwwwww = RequestOptions.Kkkkkkk(Bitmap.class).Kkkkkkkkkkkkkkkkkkkkkk();

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public static final RequestOptions f4063Wwwwwwwwwwwww = RequestOptions.Kkkkkkk(GifDrawable.class).Kkkkkkkkkkkkkkkkkkkkkk();

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public static final RequestOptions f4062Wwwwwwwwwwww = RequestOptions.Kkkkkk(DiskCacheStrategy.f4326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Kkkkkkkkkkkkkkkkkkkk(Priority.LOW).Kkkkkkkkkkkkk(true);

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class RequestManagerConnectivityListener implements ConnectivityMonitor.ConnectivityListener {
        @GuardedBy("RequestManager.this")

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RequestTracker f4078Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public RequestManagerConnectivityListener(@NonNull RequestTracker requestTracker) {
            this.f4078Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestTracker;
        }

        @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            if (z) {
                synchronized (RequestManager.this) {
                    this.f4078Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
        }
    }

    public RequestManager(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context) {
        this(glide, lifecycle, requestManagerTreeNode, new RequestTracker(), glide.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), context);
    }

    public final void Wwwwwwwwwwwww(@NonNull Target<?> target) {
        boolean Wwwwwwwwwwwwww2 = Wwwwwwwwwwwwww(target);
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = target.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (!Wwwwwwwwwwwwww2 && !this.f4075Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(target) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            target.Wwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.clear();
        }
    }

    public synchronized boolean Wwwwwwwwwwwwww(@NonNull Target<?> target) {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = target.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return true;
        }
        if (this.f4072Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            this.f4070Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(target);
            target.Wwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            return true;
        }
        return false;
    }

    public synchronized void Wwwwwwwwwwwwwww(@NonNull Target<?> target, @NonNull Request request) {
        this.f4070Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(target);
        this.f4072Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(request);
    }

    public synchronized void Wwwwwwwwwwwwwwww(@NonNull RequestOptions requestOptions) {
        this.f4066Wwwwwwwwwwwwwwww = requestOptions.clone().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public synchronized void Wwwwwwwwwwwwwwwww() {
        this.f4072Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public synchronized void Wwwwwwwwwwwwwwwwww() {
        this.f4072Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public synchronized void Wwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwww();
        for (RequestManager requestManager : this.f4071Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            requestManager.Wwwwwwwwwwwwwwwwwwww();
        }
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwww() {
        this.f4072Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NonNull
    public <T> TransitionOptions<?, T> Wwwwwwwwwwwwwwwwwwwww(Class<T> cls) {
        return this.f4075Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
    }

    public synchronized RequestOptions Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f4066Wwwwwwwwwwwwwwww;
    }

    public List<RequestListener<Object>> Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4067Wwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable Target<?> target) {
        if (target == null) {
            return;
        }
        Wwwwwwwwwwwww(target);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4064Wwwwwwwwwwwwww);
    }

    @NonNull
    @CheckResult
    public <ResourceType> RequestBuilder<ResourceType> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<ResourceType> cls) {
        return new RequestBuilder<>(this.f4075Wwwwwwwwwwwwwwwwwwwwwwwww, this, cls, this.f4074Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public synchronized void onDestroy() {
        try {
            this.f4070Wwwwwwwwwwwwwwwwwwww.onDestroy();
            for (Target<?> target : this.f4070Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwww(target);
            }
            this.f4070Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4072Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4073Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            this.f4073Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4068Wwwwwwwwwwwwwwwwww);
            Util.Wwwwwwwwwwww(this.f4069Wwwwwwwwwwwwwwwwwww);
            this.f4075Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(this);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public synchronized void onStart() {
        Wwwwwwwwwwwwwwwww();
        this.f4070Wwwwwwwwwwwwwwwwwwww.onStart();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public synchronized void onStop() {
        Wwwwwwwwwwwwwwwwww();
        this.f4070Wwwwwwwwwwwwwwwwwwww.onStop();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 60 && this.f4065Wwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwww();
        }
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f4072Wwwwwwwwwwwwwwwwwwwwww + ", treeNode=" + this.f4071Wwwwwwwwwwwwwwwwwwwww + "}";
    }

    public RequestManager(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, RequestTracker requestTracker, ConnectivityMonitorFactory connectivityMonitorFactory, Context context) {
        this.f4070Wwwwwwwwwwwwwwwwwwww = new TargetTracker();
        Runnable runnable = new Runnable() { // from class: com.bumptech.glide.RequestManager.1
            @Override // java.lang.Runnable
            public void run() {
                RequestManager requestManager = RequestManager.this;
                requestManager.f4073Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestManager);
            }
        };
        this.f4069Wwwwwwwwwwwwwwwwwww = runnable;
        this.f4075Wwwwwwwwwwwwwwwwwwwwwwwww = glide;
        this.f4073Wwwwwwwwwwwwwwwwwwwwwww = lifecycle;
        this.f4071Wwwwwwwwwwwwwwwwwwwww = requestManagerTreeNode;
        this.f4072Wwwwwwwwwwwwwwwwwwwwww = requestTracker;
        this.f4074Wwwwwwwwwwwwwwwwwwwwwwww = context;
        ConnectivityMonitor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = connectivityMonitorFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getApplicationContext(), new RequestManagerConnectivityListener(requestTracker));
        this.f4068Wwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        glide.Wwwwwwwwwwwwwwwwwww(this);
        if (Util.Wwwwwwwwwwwwwwwww()) {
            Util.Wwwwwwwwwwwww(runnable);
        } else {
            lifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
        lifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        this.f4067Wwwwwwwwwwwwwwwww = new CopyOnWriteArrayList<>(glide.Wwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Wwwwwwwwwwwwwwww(glide.Wwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ClearTarget extends CustomViewTarget<View, Object> {
        @Override // com.bumptech.glide.request.target.CustomViewTarget
        public void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }
}
