package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import kotlin.coroutines.Continuation;
import okhttp3.Call;
import okhttp3.ResponseBody;
import retrofit2.Utils;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class HttpServiceMethod<ResponseT, ReturnT> extends ServiceMethod<ReturnT> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Converter<ResponseBody, ResponseT> f14197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Call.Factory f14198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestFactory f14199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class CallAdapted<ResponseT, ReturnT> extends HttpServiceMethod<ResponseT, ReturnT> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CallAdapter<ResponseT, ReturnT> f14200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public CallAdapted(RequestFactory requestFactory, Call.Factory factory, Converter<ResponseBody, ResponseT> converter, CallAdapter<ResponseT, ReturnT> callAdapter) {
            super(requestFactory, factory, converter);
            this.f14200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = callAdapter;
        }

        @Override // retrofit2.HttpServiceMethod
        public ReturnT Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call<ResponseT> call, Object[] objArr) {
            return this.f14200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class SuspendForBody<ResponseT> extends HttpServiceMethod<ResponseT, Object> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f14201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CallAdapter<ResponseT, Call<ResponseT>> f14202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SuspendForBody(RequestFactory requestFactory, Call.Factory factory, Converter<ResponseBody, ResponseT> converter, CallAdapter<ResponseT, Call<ResponseT>> callAdapter, boolean z) {
            super(requestFactory, factory, converter);
            this.f14202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = callAdapter;
            this.f14201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // retrofit2.HttpServiceMethod
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call<ResponseT> call, Object[] objArr) {
            Call<ResponseT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f14202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                if (this.f14201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return KotlinExtensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, continuation);
                }
                return KotlinExtensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, continuation);
            } catch (Exception e) {
                return KotlinExtensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e, continuation);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class SuspendForResponse<ResponseT> extends HttpServiceMethod<ResponseT, Object> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CallAdapter<ResponseT, Call<ResponseT>> f14203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SuspendForResponse(RequestFactory requestFactory, Call.Factory factory, Converter<ResponseBody, ResponseT> converter, CallAdapter<ResponseT, Call<ResponseT>> callAdapter) {
            super(requestFactory, factory, converter);
            this.f14203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = callAdapter;
        }

        @Override // retrofit2.HttpServiceMethod
        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call<ResponseT> call, Object[] objArr) {
            Call<ResponseT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f14203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                return KotlinExtensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, continuation);
            } catch (Exception e) {
                return KotlinExtensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e, continuation);
            }
        }
    }

    public HttpServiceMethod(RequestFactory requestFactory, Call.Factory factory, Converter<ResponseBody, ResponseT> converter) {
        this.f14199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestFactory;
        this.f14198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
        this.f14197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
    }

    public static <ResponseT, ReturnT> HttpServiceMethod<ResponseT, ReturnT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Retrofit retrofit, Method method, RequestFactory requestFactory) {
        Type genericReturnType;
        boolean z;
        boolean z2 = requestFactory.f14291Wwwwwwwwwwwwwwwwwwwwwwww;
        Annotation[] annotations = method.getAnnotations();
        if (z2) {
            Type[] genericParameterTypes = method.getGenericParameterTypes();
            Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
            if (Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) == Response.class && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof ParameterizedType)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                z = true;
            } else {
                z = false;
            }
            genericReturnType = new Utils.ParameterizedTypeImpl(null, Call.class, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            annotations = SkipCallbackExecutorImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(annotations);
        } else {
            genericReturnType = method.getGenericReturnType();
            z = false;
        }
        CallAdapter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(retrofit, method, genericReturnType, annotations);
        Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != okhttp3.Response.class) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != Response.class) {
                if (requestFactory.f14299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals("HEAD") && !Void.class.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    throw Utils.Wwwwwwwwwwwwwwwwwwwwww(method, "HEAD method must use Void as response type.", new Object[0]);
                }
                Converter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(retrofit, method, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Call.Factory factory = retrofit.f14335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (!z2) {
                    return new CallAdapted(requestFactory, factory, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                if (z) {
                    return new SuspendForResponse(requestFactory, factory, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                return new SuspendForBody(requestFactory, factory, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, false);
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwwwww(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
        }
        throw Utils.Wwwwwwwwwwwwwwwwwwwwww(method, "'" + Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
    }

    public static <ResponseT> Converter<ResponseBody, ResponseT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Retrofit retrofit, Method method, Type type) {
        try {
            return retrofit.Wwwwwwwwwwwwwwwwwwwwwwwww(type, method.getAnnotations());
        } catch (RuntimeException e) {
            throw Utils.Wwwwwwwwwwwwwwwwwwwww(method, e, "Unable to create converter for %s", type);
        }
    }

    public static <ResponseT, ReturnT> CallAdapter<ResponseT, ReturnT> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Retrofit retrofit, Method method, Type type, Annotation[] annotationArr) {
        try {
            return (CallAdapter<ResponseT, ReturnT>) retrofit.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(type, annotationArr);
        } catch (RuntimeException e) {
            throw Utils.Wwwwwwwwwwwwwwwwwwwww(method, e, "Unable to create call adapter for %s", type);
        }
    }

    @Nullable
    public abstract ReturnT Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call<ResponseT> call, Object[] objArr);

    @Override // retrofit2.ServiceMethod
    @Nullable
    public final ReturnT Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object[] objArr) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new OkHttpCall(this.f14199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, objArr, this.f14198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), objArr);
    }
}
