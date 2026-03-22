package retrofit2;

import j$.util.Objects;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import okhttp3.Request;
import retrofit2.CallAdapter;
import retrofit2.DefaultCallAdapterFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class DefaultCallAdapterFactory extends CallAdapter.Factory {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Executor f14188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class ExecutorCallbackCall<T> implements Call<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Call<T> f14192Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Executor f14193Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* renamed from: retrofit2.DefaultCallAdapterFactory$ExecutorCallbackCall$1  reason: invalid class name */
        /* loaded from: classes7.dex */
        public class AnonymousClass1 implements Callback<T> {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Callback f14195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            public AnonymousClass1(Callback callback) {
                this.f14195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = callback;
            }

            public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AnonymousClass1 anonymousClass1, Callback callback, Response response) {
                if (ExecutorCallbackCall.this.f14192Wwwwwwwwwwwwwwwwwwwwwwww.isCanceled()) {
                    callback.onFailure(ExecutorCallbackCall.this, new IOException("Canceled"));
                } else {
                    callback.onResponse(ExecutorCallbackCall.this, response);
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<T> call, final Throwable th) {
                Executor executor = ExecutorCallbackCall.this.f14193Wwwwwwwwwwwwwwwwwwwwwwwww;
                final Callback callback = this.f14195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                executor.execute(new Runnable() { // from class: retrofit2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onFailure(DefaultCallAdapterFactory.ExecutorCallbackCall.this, th);
                    }
                });
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call, final Response<T> response) {
                Executor executor = ExecutorCallbackCall.this.f14193Wwwwwwwwwwwwwwwwwwwwwwwww;
                final Callback callback = this.f14195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                executor.execute(new Runnable() { // from class: retrofit2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DefaultCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1.this, callback, response);
                    }
                });
            }
        }

        public ExecutorCallbackCall(Executor executor, Call<T> call) {
            this.f14193Wwwwwwwwwwwwwwwwwwwwwwwww = executor;
            this.f14192Wwwwwwwwwwwwwwwwwwwwwwww = call;
        }

        @Override // retrofit2.Call
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Callback<T> callback) {
            Objects.requireNonNull(callback, "callback == null");
            this.f14192Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(new AnonymousClass1(callback));
        }

        @Override // retrofit2.Call
        public Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14192Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // retrofit2.Call
        public void cancel() {
            this.f14192Wwwwwwwwwwwwwwwwwwwwwwww.cancel();
        }

        @Override // retrofit2.Call
        public Response<T> execute() throws IOException {
            return this.f14192Wwwwwwwwwwwwwwwwwwwwwwww.execute();
        }

        @Override // retrofit2.Call
        public boolean isCanceled() {
            return this.f14192Wwwwwwwwwwwwwwwwwwwwwwww.isCanceled();
        }

        @Override // retrofit2.Call
        public Call<T> clone() {
            return new ExecutorCallbackCall(this.f14193Wwwwwwwwwwwwwwwwwwwwwwwww, this.f14192Wwwwwwwwwwwwwwwwwwwwwwww.mo2041clone());
        }
    }

    public DefaultCallAdapterFactory(@Nullable Executor executor) {
        this.f14188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = executor;
    }

    @Override // retrofit2.CallAdapter.Factory
    @Nullable
    public CallAdapter<?, ?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        final Executor executor = null;
        if (CallAdapter.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(type) != Call.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            final Type Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) type);
            if (!Utils.Wwwwwwwwwwwwwwwwwwwwwww(annotationArr, SkipCallbackExecutor.class)) {
                executor = this.f14188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            return new CallAdapter<Object, Call<?>>() { // from class: retrofit2.DefaultCallAdapterFactory.1
                @Override // retrofit2.CallAdapter
                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
                public Call<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call<Object> call) {
                    Executor executor2 = executor;
                    if (executor2 == null) {
                        return call;
                    }
                    return new ExecutorCallbackCall(executor2, call);
                }

                @Override // retrofit2.CallAdapter
                public Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            };
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}
