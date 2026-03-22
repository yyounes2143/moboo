package com.bumptech.glide.request;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.drawable.DrawableDecoderCompat;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.GlideTrace;
import com.bumptech.glide.util.pool.StateVerifier;
import j$.util.Objects;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class SingleRequest<R> implements Request, SizeReadyCallback, ResourceCallback {

    /* renamed from: Wwww  reason: collision with root package name */
    public static final boolean f5058Wwww = Log.isLoggable("GlideRequest", 2);
    @Nullable

    /* renamed from: Wwwww  reason: collision with root package name */
    public RuntimeException f5059Wwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwww  reason: collision with root package name */
    public boolean f5060Wwwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public int f5061Wwwwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public int f5062Wwwwwwww;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public Drawable f5063Wwwwwwwww;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public Drawable f5064Wwwwwwwwww;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public Drawable f5065Wwwwwwwwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public Status f5066Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public volatile Engine f5067Wwwwwwwwwwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public long f5068Wwwwwwwwwwwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public Engine.LoadStatus f5069Wwwwwwwwwwwwwww;
    @GuardedBy("requestLock")

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public Resource<R> f5070Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Executor f5071Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TransitionFactory<? super R> f5072Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<RequestListener<R>> f5073Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Target<R> f5074Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Priority f5075Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5076Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5077Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BaseRequestOptions<?> f5078Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<R> f5079Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f5080Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideContext f5081Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f5082Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestCoordinator f5083Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestListener<R> f5084Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final StateVerifier f5086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5087Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5088Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum Status {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    public SingleRequest(Context context, GlideContext glideContext, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, BaseRequestOptions<?> baseRequestOptions, int i, int i2, Priority priority, Target<R> target, @Nullable RequestListener<R> requestListener, @Nullable List<RequestListener<R>> list, RequestCoordinator requestCoordinator, Engine engine, TransitionFactory<? super R> transitionFactory, Executor executor) {
        this.f5087Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f5058Wwww ? String.valueOf(super.hashCode()) : null;
        this.f5086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = StateVerifier.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        this.f5082Wwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f5081Wwwwwwwwwwwwwwwwwwwwwwwwwww = glideContext;
        this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww = obj2;
        this.f5079Wwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f5078Wwwwwwwwwwwwwwwwwwwwwwww = baseRequestOptions;
        this.f5077Wwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5076Wwwwwwwwwwwwwwwwwwwwww = i2;
        this.f5075Wwwwwwwwwwwwwwwwwwwww = priority;
        this.f5074Wwwwwwwwwwwwwwwwwwww = target;
        this.f5084Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestListener;
        this.f5073Wwwwwwwwwwwwwwwwwww = list;
        this.f5083Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestCoordinator;
        this.f5067Wwwwwwwwwwwww = engine;
        this.f5072Wwwwwwwwwwwwwwwwww = transitionFactory;
        this.f5071Wwwwwwwwwwwwwwwww = executor;
        this.f5066Wwwwwwwwwwww = Status.PENDING;
        if (this.f5059Wwwww == null && glideContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideBuilder.LogRequestOrigins.class)) {
            this.f5059Wwwww = new RuntimeException("Glide request origin trace");
        }
    }

    public static <R> SingleRequest<R> Wwwwwwwwww(Context context, GlideContext glideContext, Object obj, Object obj2, Class<R> cls, BaseRequestOptions<?> baseRequestOptions, int i, int i2, Priority priority, Target<R> target, RequestListener<R> requestListener, @Nullable List<RequestListener<R>> list, RequestCoordinator requestCoordinator, Engine engine, TransitionFactory<? super R> transitionFactory, Executor executor) {
        return new SingleRequest<>(context, glideContext, obj, obj2, cls, baseRequestOptions, i, i2, priority, target, requestListener, list, requestCoordinator, engine, transitionFactory, executor);
    }

    public static int Wwwwwwwwwwwww(int i, float f) {
        if (i == Integer.MIN_VALUE) {
            return i;
        }
        return Math.round(f * i);
    }

    @GuardedBy("requestLock")
    public final void Wwwwwww() {
        Drawable drawable;
        if (!Wwwwwwwwwwwwwwwwwwwwwww()) {
            return;
        }
        if (this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            drawable = Wwwwwwwwwwwwwwwwww();
        } else {
            drawable = null;
        }
        if (drawable == null) {
            drawable = Wwwwwwwwwwwwwwwwwww();
        }
        if (drawable == null) {
            drawable = Wwwwwwwwwwwwwwwww();
        }
        this.f5074Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
    }

    @GuardedBy("requestLock")
    public final void Wwwwwwww(Resource<R> resource, R r, DataSource dataSource, boolean z) {
        boolean z2;
        boolean Wwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwww();
        this.f5066Wwwwwwwwwwww = Status.COMPLETE;
        this.f5070Wwwwwwwwwwwwwwww = resource;
        if (this.f5081Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 3) {
            r.getClass();
            Objects.toString(dataSource);
            Objects.toString(this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww);
            LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5068Wwwwwwwwwwwwww);
        }
        Wwwwwwwwwww();
        boolean z3 = true;
        this.f5060Wwwwww = true;
        try {
            List<RequestListener<R>> list = this.f5073Wwwwwwwwwwwwwwwwwww;
            if (list != null) {
                z2 = false;
                for (RequestListener<R> requestListener : list) {
                    R r2 = r;
                    DataSource dataSource2 = dataSource;
                    z2 |= requestListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f5074Wwwwwwwwwwwwwwwwwwww, dataSource2, Wwwwwwwwwwwwwwww2);
                    r = r2;
                    dataSource = dataSource2;
                }
            } else {
                z2 = false;
            }
            R r3 = r;
            DataSource dataSource3 = dataSource;
            RequestListener<R> requestListener2 = this.f5084Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (requestListener2 == null || !requestListener2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3, this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f5074Wwwwwwwwwwwwwwwwwwww, dataSource3, Wwwwwwwwwwwwwwww2)) {
                z3 = false;
            }
            if (!(z3 | z2)) {
                this.f5074Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r3, this.f5072Wwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataSource3, Wwwwwwwwwwwwwwww2));
            }
            this.f5060Wwwwww = false;
            GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("GlideRequest", this.f5088Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (Throwable th) {
            this.f5060Wwwwww = false;
            throw th;
        }
    }

    public final void Wwwwwwwww(GlideException glideException, int i) {
        boolean z;
        this.f5086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                glideException.setOrigin(this.f5059Wwwww);
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f5081Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= i) {
                    Objects.toString(this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= 4) {
                        glideException.logRootCauses("Glide");
                    }
                }
                this.f5069Wwwwwwwwwwwwwww = null;
                this.f5066Wwwwwwwwwwww = Status.FAILED;
                Wwwwwwwwwwww();
                boolean z2 = true;
                this.f5060Wwwwww = true;
                List<RequestListener<R>> list = this.f5073Wwwwwwwwwwwwwwwwwww;
                if (list != null) {
                    z = false;
                    for (RequestListener<R> requestListener : list) {
                        z |= requestListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(glideException, this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f5074Wwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwww());
                    }
                } else {
                    z = false;
                }
                RequestListener<R> requestListener2 = this.f5084Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (requestListener2 == null || !requestListener2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(glideException, this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f5074Wwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwww())) {
                    z2 = false;
                }
                if (!(z | z2)) {
                    Wwwwwww();
                }
                this.f5060Wwwwww = false;
                GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("GlideRequest", this.f5088Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @GuardedBy("requestLock")
    public final void Wwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5083Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null) {
            requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
    }

    @GuardedBy("requestLock")
    public final void Wwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5083Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null) {
            requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
    }

    @GuardedBy("requestLock")
    public final Drawable Wwwwwwwwwwwwwww(@DrawableRes int i) {
        Resources.Theme theme;
        if (this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwww() != null) {
            theme = this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwww();
        } else {
            theme = this.f5082Wwwwwwwwwwwwwwwwwwwwwwwwwwww.getTheme();
        }
        return DrawableDecoderCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5082Wwwwwwwwwwwwwwwwwwwwwwwwwwww, i, theme);
    }

    @GuardedBy("requestLock")
    public final boolean Wwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5083Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && requestCoordinator.getRoot().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return false;
        }
        return true;
    }

    @GuardedBy("requestLock")
    public final Drawable Wwwwwwwwwwwwwwwww() {
        if (this.f5064Wwwwwwwwww == null) {
            Drawable Wwwwwwwwwwwwwwwww2 = this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww();
            this.f5064Wwwwwwwwww = Wwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwww2 == null && this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww() > 0) {
                this.f5064Wwwwwwwwww = Wwwwwwwwwwwwwww(this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww());
            }
        }
        return this.f5064Wwwwwwwwww;
    }

    @GuardedBy("requestLock")
    public final Drawable Wwwwwwwwwwwwwwwwww() {
        if (this.f5063Wwwwwwwww == null) {
            Drawable Wwwwwwwwwwwwwwwwwwwwwww2 = this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww();
            this.f5063Wwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwwwwwwwww2 == null && this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww() > 0) {
                this.f5063Wwwwwwwww = Wwwwwwwwwwwwwww(this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww());
            }
        }
        return this.f5063Wwwwwwwww;
    }

    @GuardedBy("requestLock")
    public final Drawable Wwwwwwwwwwwwwwwwwww() {
        if (this.f5065Wwwwwwwwwww == null) {
            Drawable Wwwwwwwwwwwwwwwwwwwwwwww2 = this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww();
            this.f5065Wwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwwwwwwwwww2 == null && this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww() > 0) {
                this.f5065Wwwwwwwwwww = Wwwwwwwwwwwwwww(this.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        return this.f5065Wwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwww(Object obj) {
        List<RequestListener<R>> list = this.f5073Wwwwwwwwwwwwwwwwwww;
        if (list != null) {
            for (RequestListener<R> requestListener : list) {
                if (requestListener instanceof ExperimentalRequestListener) {
                    ((ExperimentalRequestListener) requestListener).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
                }
            }
        }
    }

    @GuardedBy("requestLock")
    public final void Wwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwww();
        this.f5086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f5074Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        Engine.LoadStatus loadStatus = this.f5069Wwwwwwwwwwwwwww;
        if (loadStatus != null) {
            loadStatus.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f5069Wwwwwwwwwwwwwww = null;
        }
    }

    @GuardedBy("requestLock")
    public final boolean Wwwwwwwwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5083Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && !requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        return true;
    }

    @GuardedBy("requestLock")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5083Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && !requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        return true;
    }

    @GuardedBy("requestLock")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        RequestCoordinator requestCoordinator = this.f5083Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (requestCoordinator != null && !requestCoordinator.Wwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        return true;
    }

    @GuardedBy("requestLock")
    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f5060Wwwwww) {
            return;
        }
        throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
    }

    @Override // com.bumptech.glide.request.Request
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwww();
                this.f5086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                this.f5068Wwwwwwwwwwwwww = LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Object obj = this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww;
                if (obj == null) {
                    if (Util.Wwwwwwwwwwwwww(this.f5077Wwwwwwwwwwwwwwwwwwwwwww, this.f5076Wwwwwwwwwwwwwwwwwwwwww)) {
                        this.f5062Wwwwwwww = this.f5077Wwwwwwwwwwwwwwwwwwwwwww;
                        this.f5061Wwwwwww = this.f5076Wwwwwwwwwwwwwwwwwwwwww;
                    }
                    if (Wwwwwwwwwwwwwwwwww() == null) {
                        i = 5;
                    } else {
                        i = 3;
                    }
                    Wwwwwwwww(new GlideException("Received null model"), i);
                    return;
                }
                Status status = this.f5066Wwwwwwwwwwww;
                Status status2 = Status.RUNNING;
                if (status != status2) {
                    if (status == Status.COMPLETE) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5070Wwwwwwwwwwwwwwww, DataSource.MEMORY_CACHE, false);
                        return;
                    }
                    Wwwwwwwwwwwwwwwwwwww(obj);
                    this.f5088Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("GlideRequest");
                    Status status3 = Status.WAITING_FOR_SIZE;
                    this.f5066Wwwwwwwwwwww = status3;
                    if (Util.Wwwwwwwwwwwwww(this.f5077Wwwwwwwwwwwwwwwwwwwwwww, this.f5076Wwwwwwwwwwwwwwwwwwwwww)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5077Wwwwwwwwwwwwwwwwwwwwwww, this.f5076Wwwwwwwwwwwwwwwwwwwwww);
                    } else {
                        this.f5074Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(this);
                    }
                    Status status4 = this.f5066Wwwwwwwwwwww;
                    if ((status4 == status2 || status4 == status3) && Wwwwwwwwwwwwwwwwwwwwwww()) {
                        this.f5074Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww());
                    }
                    if (f5058Wwww) {
                        Wwwwwwwwwwwwww("finished run method in " + LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5068Wwwwwwwwwwwwww));
                    }
                    return;
                }
                throw new IllegalArgumentException("Cannot restart a running request");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        int i;
        int i2;
        Object obj;
        Class<R> cls;
        BaseRequestOptions<?> baseRequestOptions;
        Priority priority;
        int i3;
        int i4;
        int i5;
        Object obj2;
        Class<R> cls2;
        BaseRequestOptions<?> baseRequestOptions2;
        Priority priority2;
        int i6;
        if (!(request instanceof SingleRequest)) {
            return false;
        }
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                i = this.f5077Wwwwwwwwwwwwwwwwwwwwwww;
                i2 = this.f5076Wwwwwwwwwwwwwwwwwwwwww;
                obj = this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww;
                cls = this.f5079Wwwwwwwwwwwwwwwwwwwwwwwww;
                baseRequestOptions = this.f5078Wwwwwwwwwwwwwwwwwwwwwwww;
                priority = this.f5075Wwwwwwwwwwwwwwwwwwwww;
                List<RequestListener<R>> list = this.f5073Wwwwwwwwwwwwwwwwwww;
                if (list != null) {
                    i3 = list.size();
                } else {
                    i3 = 0;
                }
            } finally {
            }
        }
        SingleRequest singleRequest = (SingleRequest) request;
        synchronized (singleRequest.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                i4 = singleRequest.f5077Wwwwwwwwwwwwwwwwwwwwwww;
                i5 = singleRequest.f5076Wwwwwwwwwwwwwwwwwwwwww;
                obj2 = singleRequest.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww;
                cls2 = singleRequest.f5079Wwwwwwwwwwwwwwwwwwwwwwwww;
                baseRequestOptions2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww;
                priority2 = singleRequest.f5075Wwwwwwwwwwwwwwwwwwwww;
                List<RequestListener<R>> list2 = singleRequest.f5073Wwwwwwwwwwwwwwwwwww;
                if (list2 != null) {
                    i6 = list2.size();
                } else {
                    i6 = 0;
                }
            } finally {
            }
        }
        if (i != i4 || i2 != i5 || !Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, obj2) || !cls.equals(cls2) || !baseRequestOptions.equals(baseRequestOptions2) || priority != priority2 || i3 != i6) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f5066Wwwwwwwwwwww == Status.COMPLETE) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f5086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f5066Wwwwwwwwwwww == Status.CLEARED) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        SingleRequest<R> singleRequest = this;
        singleRequest.f5086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Object obj = singleRequest.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (obj) {
            try {
                try {
                    boolean z = f5058Wwww;
                    if (z) {
                        singleRequest.Wwwwwwwwwwwwww("Got onSizeReady in " + LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(singleRequest.f5068Wwwwwwwwwwwwww));
                    }
                    if (singleRequest.f5066Wwwwwwwwwwww == Status.WAITING_FOR_SIZE) {
                        Status status = Status.RUNNING;
                        singleRequest.f5066Wwwwwwwwwwww = status;
                        float Wwwwwwwwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww();
                        singleRequest.f5062Wwwwwwww = Wwwwwwwwwwwww(i, Wwwwwwwwwww2);
                        singleRequest.f5061Wwwwwww = Wwwwwwwwwwwww(i2, Wwwwwwwwwww2);
                        if (z) {
                            singleRequest.Wwwwwwwwwwwwww("finished setup for calling load in " + LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(singleRequest.f5068Wwwwwwwwwwwwww));
                        }
                        try {
                            Engine engine = singleRequest.f5067Wwwwwwwwwwwww;
                            GlideContext glideContext = singleRequest.f5081Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                            try {
                                Object obj2 = singleRequest.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww;
                                Key Wwwwwwwwwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww();
                                try {
                                    int i3 = singleRequest.f5062Wwwwwwww;
                                    int i4 = singleRequest.f5061Wwwwwww;
                                    Class<?> Wwwwwwwwwwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwww();
                                    Class<R> cls = singleRequest.f5079Wwwwwwwwwwwwwwwwwwwwwwwww;
                                    try {
                                        Priority priority = singleRequest.f5075Wwwwwwwwwwwwwwwwwwwww;
                                        DiskCacheStrategy Wwwwwwwwwwwwwwwwwwwwwwwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                                        Map<Class<?>, Transformation<?>> Wwwwwwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwww();
                                        boolean Kkkkkkkkkkkkkkkkkkkkkkkk2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkk();
                                        boolean Www2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Www();
                                        Options Wwwwwwwwwwwwwwwwwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
                                        boolean Wwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwww();
                                        boolean Wwwwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwww();
                                        boolean Wwwwwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwww();
                                        boolean Wwwwwwwwwwwwwwwwwwwww2 = singleRequest.f5078Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
                                        Executor executor = singleRequest.f5071Wwwwwwwwwwwwwwwww;
                                        singleRequest = obj;
                                        try {
                                            singleRequest.f5069Wwwwwwwwwwwwwww = engine.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(glideContext, obj2, Wwwwwwwwwwww2, i3, i4, Wwwwwwwwwwwww2, cls, priority, Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwww2, Kkkkkkkkkkkkkkkkkkkkkkkk2, Www2, Wwwwwwwwwwwwwwwwwwww2, Wwwww2, Wwwwwww2, Wwwwwwww2, Wwwwwwwwwwwwwwwwwwwww2, singleRequest, executor);
                                            if (singleRequest.f5066Wwwwwwwwwwww != status) {
                                                singleRequest.f5069Wwwwwwwwwwwwwww = null;
                                            }
                                            if (z) {
                                                singleRequest.Wwwwwwwwwwwwww("finished onSizeReady in " + LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(singleRequest.f5068Wwwwwwwwwwwwww));
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        singleRequest = obj;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    singleRequest = obj;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                singleRequest = obj;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            singleRequest = obj;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                    singleRequest = obj;
                }
            } catch (Throwable th7) {
                th = th7;
            }
        }
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideException glideException) {
        Wwwwwwwww(glideException, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.ResourceCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Resource<?> resource, DataSource dataSource, boolean z) {
        Object obj;
        String str;
        this.f5086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Resource<?> resource2 = null;
        try {
            synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                try {
                    this.f5069Wwwwwwwwwwwwwww = null;
                    if (resource == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GlideException("Expected to receive a Resource<R> with an object of " + this.f5079Wwwwwwwwwwwwwwwwwwwwwwwww + " inside, but instead got null."));
                        return;
                    }
                    Object obj2 = resource.get();
                    try {
                        if (obj2 != null && this.f5079Wwwwwwwwwwwwwwwwwwwwwwwww.isAssignableFrom(obj2.getClass())) {
                            if (!Wwwwwwwwwwwwwwwwwwwwww()) {
                                this.f5070Wwwwwwwwwwwwwwww = null;
                                this.f5066Wwwwwwwwwwww = Status.COMPLETE;
                                GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("GlideRequest", this.f5088Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                                this.f5067Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(resource);
                            }
                            Wwwwwwww(resource, obj2, dataSource, z);
                            return;
                        }
                        this.f5070Wwwwwwwwwwwwwwww = null;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected to receive an object of ");
                        sb.append(this.f5079Wwwwwwwwwwwwwwwwwwwwwwwww);
                        sb.append(" but instead got ");
                        if (obj2 != null) {
                            obj = obj2.getClass();
                        } else {
                            obj = "";
                        }
                        sb.append(obj);
                        sb.append("{");
                        sb.append(obj2);
                        sb.append("} inside Resource{");
                        sb.append(resource);
                        sb.append("}.");
                        if (obj2 != null) {
                            str = "";
                        } else {
                            str = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
                        }
                        sb.append(str);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GlideException(sb.toString()));
                        this.f5067Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(resource);
                    } catch (Throwable th) {
                        resource2 = resource;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (resource2 != null) {
                this.f5067Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(resource2);
            }
            throw th3;
        }
    }

    @Override // com.bumptech.glide.request.Request
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f5066Wwwwwwwwwwww == Status.COMPLETE) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwww();
                this.f5086Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Status status = this.f5066Wwwwwwwwwwww;
                Status status2 = Status.CLEARED;
                if (status == status2) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwww();
                Resource<R> resource = this.f5070Wwwwwwwwwwwwwwww;
                if (resource != null) {
                    this.f5070Wwwwwwwwwwwwwwww = null;
                } else {
                    resource = null;
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwww()) {
                    this.f5074Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww());
                }
                GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("GlideRequest", this.f5088Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f5066Wwwwwwwwwwww = status2;
                if (resource != null) {
                    this.f5067Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(resource);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        boolean z;
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                Status status = this.f5066Wwwwwwwwwwww;
                if (status != Status.RUNNING && status != Status.WAITING_FOR_SIZE) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        Object obj;
        Class<R> cls;
        synchronized (this.f5085Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            obj = this.f5080Wwwwwwwwwwwwwwwwwwwwwwwwww;
            cls = this.f5079Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }

    public final void Wwwwwwwwwwwwww(String str) {
    }
}
