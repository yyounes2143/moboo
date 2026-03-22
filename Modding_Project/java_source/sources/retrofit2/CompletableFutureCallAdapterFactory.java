package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import retrofit2.CallAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@IgnoreJRERequirement
/* loaded from: classes7.dex */
public final class CompletableFutureCallAdapterFactory extends CallAdapter.Factory {
    static final CallAdapter.Factory INSTANCE = new CompletableFutureCallAdapterFactory();

    /* compiled from: Proguard */
    @IgnoreJRERequirement
    /* loaded from: classes7.dex */
    public static final class BodyCallAdapter<R> implements CallAdapter<R, CompletableFuture<R>> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Type f14181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @IgnoreJRERequirement
        /* loaded from: classes7.dex */
        public class BodyCallback implements Callback<R> {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final CompletableFuture<R> f14183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            public BodyCallback(CompletableFuture<R> completableFuture) {
                this.f14183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = completableFuture;
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<R> call, Throwable th) {
                this.f14183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.completeExceptionally(th);
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<R> call, Response<R> response) {
                if (response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    this.f14183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.complete(response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                } else {
                    this.f14183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.completeExceptionally(new HttpException(response));
                }
            }
        }

        public BodyCallAdapter(Type type) {
            this.f14181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = type;
        }

        @Override // retrofit2.CallAdapter
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public CompletableFuture<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call<R> call) {
            CallCancelCompletableFuture callCancelCompletableFuture = new CallCancelCompletableFuture(call);
            call.Wwwwwwwwwwwwwwwwwwwwwwwwwww(new BodyCallback(callCancelCompletableFuture));
            return callCancelCompletableFuture;
        }

        @Override // retrofit2.CallAdapter
        public Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @IgnoreJRERequirement
    /* loaded from: classes7.dex */
    public static final class CallCancelCompletableFuture<T> extends CompletableFuture<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Call<?> f14184Wwwwwwwwwwwwwwwwwwwwwwwww;

        public CallCancelCompletableFuture(Call<?> call) {
            this.f14184Wwwwwwwwwwwwwwwwwwwwwwwww = call;
        }

        @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            if (z) {
                this.f14184Wwwwwwwwwwwwwwwwwwwwwwwww.cancel();
            }
            return super.cancel(z);
        }
    }

    /* compiled from: Proguard */
    @IgnoreJRERequirement
    /* loaded from: classes7.dex */
    public static final class ResponseCallAdapter<R> implements CallAdapter<R, CompletableFuture<Response<R>>> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Type f14185Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @IgnoreJRERequirement
        /* loaded from: classes7.dex */
        public class ResponseCallback implements Callback<R> {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final CompletableFuture<Response<R>> f14187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            public ResponseCallback(CompletableFuture<Response<R>> completableFuture) {
                this.f14187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = completableFuture;
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<R> call, Throwable th) {
                this.f14187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.completeExceptionally(th);
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<R> call, Response<R> response) {
                this.f14187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.complete(response);
            }
        }

        public ResponseCallAdapter(Type type) {
            this.f14185Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = type;
        }

        @Override // retrofit2.CallAdapter
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public CompletableFuture<Response<R>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call<R> call) {
            CallCancelCompletableFuture callCancelCompletableFuture = new CallCancelCompletableFuture(call);
            call.Wwwwwwwwwwwwwwwwwwwwwwwwwww(new ResponseCallback(callCancelCompletableFuture));
            return callCancelCompletableFuture;
        }

        @Override // retrofit2.CallAdapter
        public Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14185Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    @Override // retrofit2.CallAdapter.Factory
    @Nullable
    public CallAdapter<?, ?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (CallAdapter.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(type) != Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CallAdapter.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) type);
            if (CallAdapter.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) != Response.class) {
                return new BodyCallAdapter(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof ParameterizedType) {
                return new ResponseCallAdapter(CallAdapter.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
            }
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
    }
}
