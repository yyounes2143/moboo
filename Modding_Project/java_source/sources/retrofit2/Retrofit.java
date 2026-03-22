package retrofit2;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.BuiltInConverters;
import retrofit2.CallAdapter;
import retrofit2.Converter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Retrofit {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f14330Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Executor f14331Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<CallAdapter.Factory> f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Converter.Factory> f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpUrl f14334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Call.Factory f14335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Method, ServiceMethod<?>> f14336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    public Retrofit(Call.Factory factory, HttpUrl httpUrl, List<Converter.Factory> list, List<CallAdapter.Factory> list2, @Nullable Executor executor, boolean z) {
        this.f14335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
        this.f14334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl;
        this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list2;
        this.f14331Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = executor;
        this.f14330Wwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(Class<?> cls) {
        Method[] declaredMethods;
        if (cls.isInterface()) {
            ArrayDeque arrayDeque = new ArrayDeque(1);
            arrayDeque.add(cls);
            while (!arrayDeque.isEmpty()) {
                Class<?> cls2 = (Class) arrayDeque.removeFirst();
                if (cls2.getTypeParameters().length != 0) {
                    StringBuilder sb = new StringBuilder("Type parameters are unsupported on ");
                    sb.append(cls2.getName());
                    if (cls2 != cls) {
                        sb.append(" which is an interface of ");
                        sb.append(cls.getName());
                    }
                    throw new IllegalArgumentException(sb.toString());
                }
                Collections.addAll(arrayDeque, cls2.getInterfaces());
            }
            if (this.f14330Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                for (Method method : cls.getDeclaredMethods()) {
                    if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(method) && !Modifier.isStatic(method.getModifiers())) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(method);
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("API declarations must be interfaces.");
    }

    public <T> Converter<T, String> Wwwwwwwwwwwwwwwwwwwwwwww(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int size = this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        for (int i = 0; i < size; i++) {
            Converter<T, String> converter = (Converter<T, String>) this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i).stringConverter(type, annotationArr, this);
            if (converter != null) {
                return converter;
            }
        }
        return BuiltInConverters.ToStringConverter.INSTANCE;
    }

    public <T> Converter<ResponseBody, T> Wwwwwwwwwwwwwwwwwwwwwwwww(Type type, Annotation[] annotationArr) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(null, type, annotationArr);
    }

    public <T> Converter<T, RequestBody> Wwwwwwwwwwwwwwwwwwwwwwwwww(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null, type, annotationArr, annotationArr2);
    }

    public <T> Converter<ResponseBody, T> Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Converter.Factory factory, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int indexOf = this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.indexOf(factory) + 1;
        int size = this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        for (int i = indexOf; i < size; i++) {
            Converter<ResponseBody, T> converter = (Converter<ResponseBody, T>) this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i).responseBodyConverter(type, annotationArr, this);
            if (converter != null) {
                return converter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (factory != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> Converter<T, RequestBody> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Converter.Factory factory, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "parameterAnnotations == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.indexOf(factory) + 1;
        int size = this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        for (int i = indexOf; i < size; i++) {
            Converter<T, RequestBody> converter = (Converter<T, RequestBody>) this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i).requestBodyConverter(type, annotationArr, annotationArr2, this);
            if (converter != null) {
                return converter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (factory != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public CallAdapter<?, ?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CallAdapter.Factory factory, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int indexOf = this.f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.indexOf(factory) + 1;
        int size = this.f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        for (int i = indexOf; i < size; i++) {
            CallAdapter<?, ?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(type, annotationArr, this);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        if (factory != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(this);
    }

    public ServiceMethod<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Method method) {
        ServiceMethod<?> serviceMethod;
        ServiceMethod<?> serviceMethod2 = this.f14336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(method);
        if (serviceMethod2 != null) {
            return serviceMethod2;
        }
        synchronized (this.f14336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                serviceMethod = this.f14336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(method);
                if (serviceMethod == null) {
                    serviceMethod = ServiceMethod.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, method);
                    this.f14336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(method, serviceMethod);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return serviceMethod;
    }

    public <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final Class<T> cls) {
        Wwwwwwwwwwwwwwwwwwwwwww(cls);
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: retrofit2.Retrofit.1

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final Platform f14340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final Object[] f14339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object[0];

            @Override // java.lang.reflect.InvocationHandler
            @Nullable
            public Object invoke(Object obj, Method method, @Nullable Object[] objArr) throws Throwable {
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (objArr == null) {
                    objArr = this.f14339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                if (this.f14340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(method)) {
                    return this.f14340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(method, cls, obj, objArr);
                }
                return Retrofit.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(method).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr);
            }
        });
    }

    public CallAdapter<?, ?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Type type, Annotation[] annotationArr) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, type, annotationArr);
    }

    public HttpUrl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14341Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Executor f14342Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<CallAdapter.Factory> f14343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Converter.Factory> f14344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public HttpUrl f14345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Call.Factory f14346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Platform f14347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder(Platform platform) {
            this.f14344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f14343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f14347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = platform;
        }

        public List<Converter.Factory> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(OkHttpClient okHttpClient) {
            Objects.requireNonNull(okHttpClient, "client == null");
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okHttpClient);
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call.Factory factory) {
            Objects.requireNonNull(factory, "factory == null");
            this.f14346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
            return this;
        }

        public Retrofit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f14345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                Call.Factory factory = this.f14346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (factory == null) {
                    factory = new OkHttpClient();
                }
                Call.Factory factory2 = factory;
                Executor executor = this.f14342Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (executor == null) {
                    executor = this.f14347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                Executor executor2 = executor;
                ArrayList arrayList = new ArrayList(this.f14343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                arrayList.addAll(this.f14347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(executor2));
                ArrayList arrayList2 = new ArrayList(this.f14344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() + 1 + this.f14347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                arrayList2.add(new BuiltInConverters());
                arrayList2.addAll(this.f14344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                arrayList2.addAll(this.f14347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                return new Retrofit(factory2, this.f14345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), executor2, this.f14341Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            throw new IllegalStateException("Base URL required.");
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl httpUrl) {
            Objects.requireNonNull(httpUrl, "baseUrl == null");
            List<String> Wwwwwwwwwwwwwwwwwwwwww2 = httpUrl.Wwwwwwwwwwwwwwwwwwwwww();
            if ("".equals(Wwwwwwwwwwwwwwwwwwwwww2.get(Wwwwwwwwwwwwwwwwwwwwww2.size() - 1))) {
                this.f14345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            Objects.requireNonNull(str, "baseUrl == null");
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str));
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Converter.Factory factory) {
            List<Converter.Factory> list = this.f14344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Objects.requireNonNull(factory, "factory == null");
            list.add(factory);
            return this;
        }

        public Builder() {
            this(Platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }

        public Builder(Retrofit retrofit) {
            this.f14344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f14343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f14347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            this.f14346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = retrofit.f14335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f14345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = retrofit.f14334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int size = retrofit.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() - Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            for (int i = 1; i < size; i++) {
                this.f14344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(retrofit.f14333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i));
            }
            int size2 = retrofit.f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() - this.f14347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f14343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(retrofit.f14332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i2));
            }
            this.f14342Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = retrofit.f14331Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f14341Wwwwwwwwwwwwwwwwwwwwwwwwwwww = retrofit.f14330Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }
}
