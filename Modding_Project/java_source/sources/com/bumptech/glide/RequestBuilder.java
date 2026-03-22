package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.ErrorRequestCoordinator;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.RequestFutureTarget;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.ThumbnailRequestCoordinator;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.signature.AndroidResourceSignature;
import com.bumptech.glide.util.Executors;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RequestBuilder<TranscodeType> extends BaseRequestOptions<RequestBuilder<TranscodeType>> implements Cloneable, ModelTypes<RequestBuilder<TranscodeType>> {

    /* renamed from: Kkkkkkkkk  reason: collision with root package name */
    public static final RequestOptions f4045Kkkkkkkkk = new RequestOptions().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(DiskCacheStrategy.f4326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Kkkkkkkkkkkkkkkkkkkk(Priority.LOW).Kkkkkkkkkkkkk(true);

    /* renamed from: Kkkkkkkkkk  reason: collision with root package name */
    public boolean f4046Kkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkk  reason: collision with root package name */
    public boolean f4047Kkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkk  reason: collision with root package name */
    public boolean f4048Kkkkkkkkkkkk = true;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkk  reason: collision with root package name */
    public Float f4049Kkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkk  reason: collision with root package name */
    public RequestBuilder<TranscodeType> f4050Kkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkk  reason: collision with root package name */
    public RequestBuilder<TranscodeType> f4051Kkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkk  reason: collision with root package name */
    public List<RequestListener<TranscodeType>> f4052Kkkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public Object f4053Kkkkkkkkkkkkkkkkk;
    @NonNull

    /* renamed from: Kkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public TransitionOptions<?, ? super TranscodeType> f4054Kkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final GlideContext f4055Kkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final Glide f4056Kkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final Class<TranscodeType> f4057Kkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final RequestManager f4058Kkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final Context f4059Kkkkkkkkkkkkkkkkkkkkkkk;

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.RequestBuilder$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f4060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f4061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[Priority.values().length];
            f4060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[Priority.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Priority.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Priority.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Priority.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f4061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f4061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f4061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    @SuppressLint({"CheckResult"})
    public RequestBuilder(@NonNull Glide glide, RequestManager requestManager, Class<TranscodeType> cls, Context context) {
        this.f4056Kkkkkkkkkkkkkkkkkkkk = glide;
        this.f4058Kkkkkkkkkkkkkkkkkkkkkk = requestManager;
        this.f4057Kkkkkkkkkkkkkkkkkkkkk = cls;
        this.f4059Kkkkkkkkkkkkkkkkkkkkkkk = context;
        this.f4054Kkkkkkkkkkkkkkkkkk = requestManager.Wwwwwwwwwwwwwwwwwwwww(cls);
        this.f4055Kkkkkkkkkkkkkkkkkkk = glide.Wwwwwwwwwwwwwwwwwwwwwwwww();
        Illllllllllllllllllllllllll(requestManager.Wwwwwwwwwwwwwwwwwwwwwww());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestManager.Wwwwwwwwwwwwwwwwwwwwww());
    }

    @NonNull
    public FutureTarget<TranscodeType> Illlllllllllllll(int i, int i2) {
        RequestFutureTarget requestFutureTarget = new RequestFutureTarget(i, i2);
        return (FutureTarget) Illlllllllllllllllllllll(requestFutureTarget, requestFutureTarget, Executors.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final Request Illllllllllllllll(Object obj, Target<TranscodeType> target, RequestListener<TranscodeType> requestListener, BaseRequestOptions<?> baseRequestOptions, RequestCoordinator requestCoordinator, TransitionOptions<?, ? super TranscodeType> transitionOptions, Priority priority, int i, int i2, Executor executor) {
        Context context = this.f4059Kkkkkkkkkkkkkkkkkkkkkkk;
        GlideContext glideContext = this.f4055Kkkkkkkkkkkkkkkkkkk;
        return SingleRequest.Wwwwwwwwww(context, glideContext, obj, this.f4053Kkkkkkkkkkkkkkkkk, this.f4057Kkkkkkkkkkkkkkkkkkkkk, baseRequestOptions, i, i2, priority, target, requestListener, this.f4052Kkkkkkkkkkkkkkkk, requestCoordinator, glideContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), transitionOptions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), executor);
    }

    public final RequestBuilder<TranscodeType> Illlllllllllllllll(@Nullable Uri uri, RequestBuilder<TranscodeType> requestBuilder) {
        if (uri != null && "android.resource".equals(uri.getScheme())) {
            return Kkkkk(requestBuilder);
        }
        return requestBuilder;
    }

    @NonNull
    public final RequestBuilder<TranscodeType> Illllllllllllllllll(@Nullable Object obj) {
        if (Wwwwww()) {
            return clone().Illllllllllllllllll(obj);
        }
        this.f4053Kkkkkkkkkkkkkkkkk = obj;
        this.f4047Kkkkkkkkkkk = true;
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> Illlllllllllllllllll(@Nullable String str) {
        return Illllllllllllllllll(str);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> Illllllllllllllllllll(@Nullable Object obj) {
        return Illllllllllllllllll(obj);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> Illlllllllllllllllllll(@Nullable Uri uri) {
        return Illlllllllllllllll(uri, Illllllllllllllllll(uri));
    }

    public final boolean Illllllllllllllllllllll(BaseRequestOptions<?> baseRequestOptions, Request request) {
        if (!baseRequestOptions.Wwwww() && request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        return false;
    }

    @NonNull
    public <Y extends Target<TranscodeType>> Y Illlllllllllllllllllllll(@NonNull Y y, @Nullable RequestListener<TranscodeType> requestListener, Executor executor) {
        return (Y) Illllllllllllllllllllllll(y, requestListener, this, executor);
    }

    public final <Y extends Target<TranscodeType>> Y Illllllllllllllllllllllll(@NonNull Y y, @Nullable RequestListener<TranscodeType> requestListener, BaseRequestOptions<?> baseRequestOptions, Executor executor) {
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(y);
        if (this.f4047Kkkkkkkkkkk) {
            Request Kkkk = Kkkk(y, requestListener, baseRequestOptions, executor);
            Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = y.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Kkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && !Illllllllllllllllllllll(baseRequestOptions, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                if (!((Request) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)).isRunning()) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                return y;
            }
            this.f4058Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwww(y);
            y.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkk);
            this.f4058Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwww(y, Kkkk);
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    @NonNull
    public <Y extends Target<TranscodeType>> Y Illlllllllllllllllllllllll(@NonNull Y y) {
        return (Y) Illlllllllllllllllllllll(y, null, Executors.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @SuppressLint({"CheckResult"})
    public final void Illllllllllllllllllllllllll(List<RequestListener<Object>> list) {
        for (RequestListener<Object> requestListener : list) {
            Kkkkkkk(requestListener);
        }
    }

    @NonNull
    public final Priority Illlllllllllllllllllllllllll(@NonNull Priority priority) {
        int i = AnonymousClass1.f4060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[priority.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3 && i != 4) {
                    throw new IllegalArgumentException("unknown priority: " + Wwwwwwwwwwwwwww());
                }
                return Priority.IMMEDIATE;
            }
            return Priority.HIGH;
        }
        return Priority.NORMAL;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    @CheckResult
    /* renamed from: Illllllllllllllllllllllllllll */
    public RequestBuilder<TranscodeType> clone() {
        RequestBuilder<TranscodeType> requestBuilder = (RequestBuilder) super.clone();
        requestBuilder.f4054Kkkkkkkkkkkkkkkkkk = (TransitionOptions<?, ? super TranscodeType>) requestBuilder.f4054Kkkkkkkkkkkkkkkkkk.clone();
        if (requestBuilder.f4052Kkkkkkkkkkkkkkkk != null) {
            requestBuilder.f4052Kkkkkkkkkkkkkkkk = new ArrayList(requestBuilder.f4052Kkkkkkkkkkkkkkkk);
        }
        RequestBuilder<TranscodeType> requestBuilder2 = requestBuilder.f4051Kkkkkkkkkkkkkkk;
        if (requestBuilder2 != null) {
            requestBuilder.f4051Kkkkkkkkkkkkkkk = requestBuilder2.clone();
        }
        RequestBuilder<TranscodeType> requestBuilder3 = requestBuilder.f4050Kkkkkkkkkkkkkk;
        if (requestBuilder3 != null) {
            requestBuilder.f4050Kkkkkkkkkkkkkk = requestBuilder3.clone();
        }
        return requestBuilder;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.bumptech.glide.request.BaseRequestOptions] */
    public final Request Kk(Object obj, Target<TranscodeType> target, RequestListener<TranscodeType> requestListener, @Nullable RequestCoordinator requestCoordinator, TransitionOptions<?, ? super TranscodeType> transitionOptions, Priority priority, int i, int i2, BaseRequestOptions<?> baseRequestOptions, Executor executor) {
        TransitionOptions<?, ? super TranscodeType> transitionOptions2;
        Priority Illlllllllllllllllllllllllll;
        RequestBuilder<TranscodeType> requestBuilder = this.f4051Kkkkkkkkkkkkkkk;
        if (requestBuilder != null) {
            if (!this.f4046Kkkkkkkkkk) {
                TransitionOptions<?, ? super TranscodeType> transitionOptions3 = requestBuilder.f4054Kkkkkkkkkkkkkkkkkk;
                if (requestBuilder.f4048Kkkkkkkkkkkk) {
                    transitionOptions2 = transitionOptions;
                } else {
                    transitionOptions2 = transitionOptions3;
                }
                if (requestBuilder.Wwww()) {
                    Illlllllllllllllllllllllllll = this.f4051Kkkkkkkkkkkkkkk.Wwwwwwwwwwwwwww();
                } else {
                    Illlllllllllllllllllllllllll = Illlllllllllllllllllllllllll(priority);
                }
                Priority priority2 = Illlllllllllllllllllllllllll;
                int Wwwwwwwwwwwwwwwwww2 = this.f4051Kkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwww();
                int Wwwwwwwwwwwwwwwwwww2 = this.f4051Kkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwww();
                if (Util.Wwwwwwwwwwwwww(i, i2) && !this.f4051Kkkkkkkkkkkkkkk.Kkkkkkkkkkkkkkkkkkkkkkk()) {
                    Wwwwwwwwwwwwwwwwww2 = baseRequestOptions.Wwwwwwwwwwwwwwwwww();
                    Wwwwwwwwwwwwwwwwwww2 = baseRequestOptions.Wwwwwwwwwwwwwwwwwww();
                }
                ThumbnailRequestCoordinator thumbnailRequestCoordinator = new ThumbnailRequestCoordinator(obj, requestCoordinator);
                Request Illllllllllllllll = Illllllllllllllll(obj, target, requestListener, baseRequestOptions, thumbnailRequestCoordinator, transitionOptions, priority, i, i2, executor);
                this.f4046Kkkkkkkkkk = true;
                RequestBuilder<TranscodeType> requestBuilder2 = this.f4051Kkkkkkkkkkkkkkk;
                Request Kkk = requestBuilder2.Kkk(obj, target, requestListener, thumbnailRequestCoordinator, transitionOptions2, priority2, Wwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwww2, requestBuilder2, executor);
                this.f4046Kkkkkkkkkk = false;
                thumbnailRequestCoordinator.Wwwwwwwwwwwwwwwwwwwww(Illllllllllllllll, Kkk);
                return thumbnailRequestCoordinator;
            }
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        } else if (this.f4049Kkkkkkkkkkkkk != null) {
            ThumbnailRequestCoordinator thumbnailRequestCoordinator2 = new ThumbnailRequestCoordinator(obj, requestCoordinator);
            thumbnailRequestCoordinator2.Wwwwwwwwwwwwwwwwwwwww(Illllllllllllllll(obj, target, requestListener, baseRequestOptions, thumbnailRequestCoordinator2, transitionOptions, priority, i, i2, executor), Illllllllllllllll(obj, target, requestListener, baseRequestOptions.clone().Kkkkkkkkkkkkkk(this.f4049Kkkkkkkkkkkkk.floatValue()), thumbnailRequestCoordinator2, transitionOptions, Illlllllllllllllllllllllllll(priority), i, i2, executor));
            return thumbnailRequestCoordinator2;
        } else {
            return Illllllllllllllll(obj, target, requestListener, baseRequestOptions, requestCoordinator, transitionOptions, priority, i, i2, executor);
        }
    }

    public final Request Kkk(Object obj, Target<TranscodeType> target, @Nullable RequestListener<TranscodeType> requestListener, @Nullable RequestCoordinator requestCoordinator, TransitionOptions<?, ? super TranscodeType> transitionOptions, Priority priority, int i, int i2, BaseRequestOptions<?> baseRequestOptions, Executor executor) {
        ErrorRequestCoordinator errorRequestCoordinator;
        ErrorRequestCoordinator errorRequestCoordinator2;
        Object obj2;
        Target<TranscodeType> target2;
        RequestListener<TranscodeType> requestListener2;
        TransitionOptions<?, ? super TranscodeType> transitionOptions2;
        Priority priority2;
        int i3;
        int i4;
        BaseRequestOptions<?> baseRequestOptions2;
        Executor executor2;
        RequestBuilder<TranscodeType> requestBuilder;
        if (this.f4050Kkkkkkkkkkkkkk != null) {
            errorRequestCoordinator = new ErrorRequestCoordinator(obj, requestCoordinator);
            errorRequestCoordinator2 = errorRequestCoordinator;
            requestBuilder = this;
            obj2 = obj;
            target2 = target;
            requestListener2 = requestListener;
            transitionOptions2 = transitionOptions;
            priority2 = priority;
            i3 = i;
            i4 = i2;
            baseRequestOptions2 = baseRequestOptions;
            executor2 = executor;
        } else {
            errorRequestCoordinator = null;
            errorRequestCoordinator2 = requestCoordinator;
            obj2 = obj;
            target2 = target;
            requestListener2 = requestListener;
            transitionOptions2 = transitionOptions;
            priority2 = priority;
            i3 = i;
            i4 = i2;
            baseRequestOptions2 = baseRequestOptions;
            executor2 = executor;
            requestBuilder = this;
        }
        Request Kk = requestBuilder.Kk(obj2, target2, requestListener2, errorRequestCoordinator2, transitionOptions2, priority2, i3, i4, baseRequestOptions2, executor2);
        if (errorRequestCoordinator == null) {
            return Kk;
        }
        int Wwwwwwwwwwwwwwwwww2 = this.f4050Kkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwww2 = this.f4050Kkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwww();
        if (Util.Wwwwwwwwwwwwww(i, i2) && !this.f4050Kkkkkkkkkkkkkk.Kkkkkkkkkkkkkkkkkkkkkkk()) {
            Wwwwwwwwwwwwwwwwww2 = baseRequestOptions.Wwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwww2 = baseRequestOptions.Wwwwwwwwwwwwwwwwwww();
        }
        RequestBuilder<TranscodeType> requestBuilder2 = this.f4050Kkkkkkkkkkkkkk;
        ErrorRequestCoordinator errorRequestCoordinator3 = errorRequestCoordinator;
        errorRequestCoordinator3.Wwwwwwwwwwwwwwwwwwww(Kk, requestBuilder2.Kkk(obj, target, requestListener, errorRequestCoordinator3, requestBuilder2.f4054Kkkkkkkkkkkkkkkkkk, requestBuilder2.Wwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwww2, this.f4050Kkkkkkkkkkkkkk, executor));
        return errorRequestCoordinator3;
    }

    public final Request Kkkk(Target<TranscodeType> target, @Nullable RequestListener<TranscodeType> requestListener, BaseRequestOptions<?> baseRequestOptions, Executor executor) {
        return Kkk(new Object(), target, requestListener, null, this.f4054Kkkkkkkkkkkkkkkkkk, baseRequestOptions.Wwwwwwwwwwwwwww(), baseRequestOptions.Wwwwwwwwwwwwwwwwww(), baseRequestOptions.Wwwwwwwwwwwwwwwwwww(), baseRequestOptions, executor);
    }

    public final RequestBuilder<TranscodeType> Kkkkk(RequestBuilder<TranscodeType> requestBuilder) {
        return requestBuilder.Kkkkkkkkkkkk(this.f4059Kkkkkkkkkkkkkkkkkkkkkkk.getTheme()).Kkkkkkkkkkkkkkk(AndroidResourceSignature.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4059Kkkkkkkkkkkkkkkkkkkkkkk));
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    @NonNull
    @CheckResult
    /* renamed from: Kkkkkk */
    public RequestBuilder<TranscodeType> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BaseRequestOptions<?> baseRequestOptions) {
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(baseRequestOptions);
        return (RequestBuilder) super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(baseRequestOptions);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> Kkkkkkk(@Nullable RequestListener<TranscodeType> requestListener) {
        if (Wwwwww()) {
            return clone().Kkkkkkk(requestListener);
        }
        if (requestListener != null) {
            if (this.f4052Kkkkkkkkkkkkkkkk == null) {
                this.f4052Kkkkkkkkkkkkkkkk = new ArrayList();
            }
            this.f4052Kkkkkkkkkkkkkkkk.add(requestListener);
        }
        return Kkkkkkkkkkkkkkkkk();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public boolean equals(Object obj) {
        if (obj instanceof RequestBuilder) {
            RequestBuilder requestBuilder = (RequestBuilder) obj;
            if (super.equals(requestBuilder) && Objects.equals(this.f4057Kkkkkkkkkkkkkkkkkkkkk, requestBuilder.f4057Kkkkkkkkkkkkkkkkkkkkk) && this.f4054Kkkkkkkkkkkkkkkkkk.equals(requestBuilder.f4054Kkkkkkkkkkkkkkkkkk) && Objects.equals(this.f4053Kkkkkkkkkkkkkkkkk, requestBuilder.f4053Kkkkkkkkkkkkkkkkk) && Objects.equals(this.f4052Kkkkkkkkkkkkkkkk, requestBuilder.f4052Kkkkkkkkkkkkkkkk) && Objects.equals(this.f4051Kkkkkkkkkkkkkkk, requestBuilder.f4051Kkkkkkkkkkkkkkk) && Objects.equals(this.f4050Kkkkkkkkkkkkkk, requestBuilder.f4050Kkkkkkkkkkkkkk) && Objects.equals(this.f4049Kkkkkkkkkkkkk, requestBuilder.f4049Kkkkkkkkkkkkk) && this.f4048Kkkkkkkkkkkk == requestBuilder.f4048Kkkkkkkkkkkk && this.f4047Kkkkkkkkkkk == requestBuilder.f4047Kkkkkkkkkkk) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public int hashCode() {
        return Util.Wwwwwwwwwwwwwwwwww(this.f4047Kkkkkkkkkkk, Util.Wwwwwwwwwwwwwwwwww(this.f4048Kkkkkkkkkkkk, Util.Wwwwwwwwwwwwwwwwwww(this.f4049Kkkkkkkkkkkkk, Util.Wwwwwwwwwwwwwwwwwww(this.f4050Kkkkkkkkkkkkkk, Util.Wwwwwwwwwwwwwwwwwww(this.f4051Kkkkkkkkkkkkkkk, Util.Wwwwwwwwwwwwwwwwwww(this.f4052Kkkkkkkkkkkkkkkk, Util.Wwwwwwwwwwwwwwwwwww(this.f4053Kkkkkkkkkkkkkkkkk, Util.Wwwwwwwwwwwwwwwwwww(this.f4054Kkkkkkkkkkkkkkkkkk, Util.Wwwwwwwwwwwwwwwwwww(this.f4057Kkkkkkkkkkkkkkkkkkkkk, super.hashCode())))))))));
    }
}
