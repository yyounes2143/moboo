package retrofit2;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import kotlin.coroutines.Continuation;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import retrofit2.ParameterHandler;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HEAD;
import retrofit2.http.HTTP;
import retrofit2.http.Header;
import retrofit2.http.HeaderMap;
import retrofit2.http.Multipart;
import retrofit2.http.OPTIONS;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.QueryName;
import retrofit2.http.Tag;
import retrofit2.http.Url;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class RequestFactory {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f14291Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ParameterHandler<?>[] f14292Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f14293Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f14294Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f14295Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaType f14296Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Headers f14297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpUrl f14300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f14301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
        public boolean f14304Wwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
        public ParameterHandler<?>[] f14305Wwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
        public Set<String> f14306Wwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaType f14307Wwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
        public Headers f14308Wwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f14309Wwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14310Wwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14311Wwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14312Wwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f14313Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14314Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14315Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14316Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14317Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14318Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14319Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14320Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f14321Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Type[] f14322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Annotation[][] f14323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Annotation[] f14324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Retrofit f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
        public static final Pattern f14303Wwwwwwwwwww = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

        /* renamed from: Wwwwwwwwww  reason: collision with root package name */
        public static final Pattern f14302Wwwwwwwwww = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        public Builder(Retrofit retrofit, Method method) {
            this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = retrofit;
            this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method.getAnnotations();
            this.f14322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method.getGenericParameterTypes();
            this.f14323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method.getParameterAnnotations();
        }

        public static Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            Matcher matcher = f14303Wwwwwwwwwww.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        public static Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<?> cls) {
            if (Boolean.TYPE == cls) {
                return Boolean.class;
            }
            if (Byte.TYPE == cls) {
                return Byte.class;
            }
            if (Character.TYPE == cls) {
                return Character.class;
            }
            if (Double.TYPE == cls) {
                return Double.class;
            }
            if (Float.TYPE == cls) {
                return Float.class;
            }
            if (Integer.TYPE == cls) {
                return Integer.class;
            }
            if (Long.TYPE == cls) {
                return Long.class;
            }
            if (Short.TYPE == cls) {
                return Short.class;
            }
            return cls;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwww(int i, Type type) {
            if (!Utils.Wwwwwwwwwwwwwwwwwwwwwwwww(type)) {
                return;
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "Parameter type must not include a type variable or wildcard: %s", type);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i, String str) {
            if (f14302Wwwwwwwwww.matcher(str).matches()) {
                if (this.f14306Wwwwwwwwwwwwww.contains(str)) {
                    return;
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "URL \"%s\" does not contain \"{%s}\".", this.f14309Wwwwwwwwwwwwwwwww, str);
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Path parameter name must match %s. Found: %s", f14303Wwwwwwwwwww.pattern(), str);
        }

        @Nullable
        public final ParameterHandler<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof Url) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                if (!this.f14314Wwwwwwwwwwwwwwwwwwwwww) {
                    if (!this.f14318Wwwwwwwwwwwwwwwwwwwwwwwwww) {
                        if (!this.f14317Wwwwwwwwwwwwwwwwwwwwwwwww) {
                            if (!this.f14316Wwwwwwwwwwwwwwwwwwwwwwww) {
                                if (!this.f14315Wwwwwwwwwwwwwwwwwwwwwww) {
                                    if (this.f14309Wwwwwwwwwwwwwwwww == null) {
                                        this.f14314Wwwwwwwwwwwwwwwwwwwwww = true;
                                        if (type != HttpUrl.class && type != String.class && type != URI.class && (!(type instanceof Class) || !"android.net.Uri".equals(((Class) type).getName()))) {
                                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                                        }
                                        return new ParameterHandler.RelativeUrl(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i);
                                    }
                                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Url cannot be used with @%s URL", this.f14313Wwwwwwwwwwwwwwwwwwwww);
                                }
                                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                            }
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                        }
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "A @Url parameter must not come after a @Query.", new Object[0]);
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "Multiple @Url method annotations found.", new Object[0]);
            } else if (annotation instanceof Path) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                if (!this.f14317Wwwwwwwwwwwwwwwwwwwwwwwww) {
                    if (!this.f14316Wwwwwwwwwwwwwwwwwwwwwwww) {
                        if (!this.f14315Wwwwwwwwwwwwwwwwwwwwwww) {
                            if (!this.f14314Wwwwwwwwwwwwwwwwwwwwww) {
                                if (this.f14309Wwwwwwwwwwwwwwwww != null) {
                                    this.f14318Wwwwwwwwwwwwwwwwwwwwwwwwww = true;
                                    Path path = (Path) annotation;
                                    String value = path.value();
                                    Wwwwwwwwwwwwwwwwwwwwwwwwww(i, value);
                                    return new ParameterHandler.Path(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, value, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(type, annotationArr), path.encoded());
                                }
                                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Path can only be used with relative url on @%s", this.f14313Wwwwwwwwwwwwwwwwwwwww);
                            }
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Path parameters may not be used with @Url.", new Object[0]);
                        }
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "A @Path parameter must not come after a @Query.", new Object[0]);
            } else if (annotation instanceof Query) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                Query query = (Query) annotation;
                String value2 = query.value();
                boolean encoded = query.encoded();
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                this.f14317Wwwwwwwwwwwwwwwwwwwwwwwww = true;
                if (Iterable.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    if (type instanceof ParameterizedType) {
                        return new ParameterHandler.Query(value2, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) type), annotationArr), encoded).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwwww2.getSimpleName() + " must include generic type (e.g., " + Wwwwwwwwwwwwwwwwwwwwwwwwwww2.getSimpleName() + "<String>)", new Object[0]);
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2.isArray()) {
                    return new ParameterHandler.Query(value2, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww2.getComponentType()), annotationArr), encoded).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } else {
                    return new ParameterHandler.Query(value2, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(type, annotationArr), encoded);
                }
            } else if (annotation instanceof QueryName) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                boolean encoded2 = ((QueryName) annotation).encoded();
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                this.f14316Wwwwwwwwwwwwwwwwwwwwwwww = true;
                if (Iterable.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
                    if (type instanceof ParameterizedType) {
                        return new ParameterHandler.QueryName(this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) type), annotationArr), encoded2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwwww3.getSimpleName() + " must include generic type (e.g., " + Wwwwwwwwwwwwwwwwwwwwwwwwwww3.getSimpleName() + "<String>)", new Object[0]);
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww3.isArray()) {
                    return new ParameterHandler.QueryName(this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww3.getComponentType()), annotationArr), encoded2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } else {
                    return new ParameterHandler.QueryName(this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(type, annotationArr), encoded2);
                }
            } else if (annotation instanceof QueryMap) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww4 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                this.f14315Wwwwwwwwwwwwwwwwwwwwwww = true;
                if (Map.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww4)) {
                    Type Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwww(type, Wwwwwwwwwwwwwwwwwwwwwwwwwww4, Map.class);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                        Type Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, parameterizedType);
                        if (String.class == Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                            return new ParameterHandler.QueryMap(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1, parameterizedType), annotationArr), ((QueryMap) annotation).encoded());
                        }
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@QueryMap keys must be of type String: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, new Object[0]);
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@QueryMap parameter type must be Map.", new Object[0]);
            } else if (annotation instanceof Header) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                String value3 = ((Header) annotation).value();
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww5 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                if (Iterable.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww5)) {
                    if (type instanceof ParameterizedType) {
                        return new ParameterHandler.Header(value3, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) type), annotationArr)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwwww5.getSimpleName() + " must include generic type (e.g., " + Wwwwwwwwwwwwwwwwwwwwwwwwwww5.getSimpleName() + "<String>)", new Object[0]);
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww5.isArray()) {
                    return new ParameterHandler.Header(value3, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww5.getComponentType()), annotationArr)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } else {
                    return new ParameterHandler.Header(value3, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(type, annotationArr));
                }
            } else if (annotation instanceof HeaderMap) {
                if (type == Headers.class) {
                    return new ParameterHandler.Headers(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww6 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                if (Map.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww6)) {
                    Type Wwwwwwwwwwwwwwwwwwwwwwwwww3 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwww(type, Wwwwwwwwwwwwwwwwwwwwwwwwwww6, Map.class);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwww3 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType2 = (ParameterizedType) Wwwwwwwwwwwwwwwwwwwwwwwwww3;
                        Type Wwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, parameterizedType2);
                        if (String.class == Wwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                            return new ParameterHandler.HeaderMap(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1, parameterizedType2), annotationArr));
                        }
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@HeaderMap keys must be of type String: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwww3, new Object[0]);
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@HeaderMap parameter type must be Map.", new Object[0]);
            } else if (annotation instanceof Field) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                if (this.f14311Wwwwwwwwwwwwwwwwwww) {
                    Field field = (Field) annotation;
                    String value4 = field.value();
                    boolean encoded3 = field.encoded();
                    this.f14321Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                    Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww7 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                    if (Iterable.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww7)) {
                        if (type instanceof ParameterizedType) {
                            return new ParameterHandler.Field(value4, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) type), annotationArr), encoded3).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwwww7.getSimpleName() + " must include generic type (e.g., " + Wwwwwwwwwwwwwwwwwwwwwwwwwww7.getSimpleName() + "<String>)", new Object[0]);
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww7.isArray()) {
                        return new ParameterHandler.Field(value4, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww7.getComponentType()), annotationArr), encoded3).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    } else {
                        return new ParameterHandler.Field(value4, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(type, annotationArr), encoded3);
                    }
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Field parameters can only be used with form encoding.", new Object[0]);
            } else if (annotation instanceof FieldMap) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                if (this.f14311Wwwwwwwwwwwwwwwwwww) {
                    Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww8 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                    if (Map.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww8)) {
                        Type Wwwwwwwwwwwwwwwwwwwwwwwwww4 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwww(type, Wwwwwwwwwwwwwwwwwwwwwwwwwww8, Map.class);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwww4 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType3 = (ParameterizedType) Wwwwwwwwwwwwwwwwwwwwwwwwww4;
                            Type Wwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, parameterizedType3);
                            if (String.class == Wwwwwwwwwwwwwwwwwwwwwwwwwwww4) {
                                Converter Wwwwwwwwwwwwwwwwwwwwwwww2 = this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1, parameterizedType3), annotationArr);
                                this.f14321Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                                return new ParameterHandler.FieldMap(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwww2, ((FieldMap) annotation).encoded());
                            }
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@FieldMap keys must be of type String: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwww4, new Object[0]);
                        }
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
            } else if (annotation instanceof Part) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                if (this.f14310Wwwwwwwwwwwwwwwwww) {
                    Part part = (Part) annotation;
                    this.f14320Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                    String value5 = part.value();
                    Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww9 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                    if (value5.isEmpty()) {
                        if (Iterable.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww9)) {
                            if (type instanceof ParameterizedType) {
                                if (MultipartBody.Part.class.isAssignableFrom(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) type)))) {
                                    return ParameterHandler.RawPart.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                }
                                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                            }
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwwww9.getSimpleName() + " must include generic type (e.g., " + Wwwwwwwwwwwwwwwwwwwwwwwwwww9.getSimpleName() + "<String>)", new Object[0]);
                        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww9.isArray()) {
                            if (MultipartBody.Part.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww9.getComponentType())) {
                                return ParameterHandler.RawPart.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            }
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        } else if (MultipartBody.Part.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww9)) {
                            return ParameterHandler.RawPart.INSTANCE;
                        } else {
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                    }
                    Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.CONTENT_DISPOSITION, "form-data; name=\"" + value5 + "\"", "Content-Transfer-Encoding", part.encoding());
                    if (Iterable.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww9)) {
                        if (type instanceof ParameterizedType) {
                            Type Wwwwwwwwwwwwwwwwwwwwwwwwwwww6 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, (ParameterizedType) type);
                            if (!MultipartBody.Part.class.isAssignableFrom(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww6))) {
                                return new ParameterHandler.Part(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwww5, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww6, annotationArr, this.f14324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            }
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwwww9.getSimpleName() + " must include generic type (e.g., " + Wwwwwwwwwwwwwwwwwwwwwwwwwww9.getSimpleName() + "<String>)", new Object[0]);
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww9.isArray()) {
                        Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww9.getComponentType());
                        if (!MultipartBody.Part.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                            return new ParameterHandler.Part(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwww5, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, annotationArr, this.f14324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    } else if (!MultipartBody.Part.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww9)) {
                        return new ParameterHandler.Part(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwww5, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(type, annotationArr, this.f14324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                    } else {
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Part parameters can only be used with multipart encoding.", new Object[0]);
            } else if (annotation instanceof PartMap) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                if (this.f14310Wwwwwwwwwwwwwwwwww) {
                    this.f14320Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                    Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww10 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                    if (Map.class.isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwwwww10)) {
                        Type Wwwwwwwwwwwwwwwwwwwwwwwwww5 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwww(type, Wwwwwwwwwwwwwwwwwwwwwwwwwww10, Map.class);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwww5 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType4 = (ParameterizedType) Wwwwwwwwwwwwwwwwwwwwwwwwww5;
                            Type Wwwwwwwwwwwwwwwwwwwwwwwwwwww7 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(0, parameterizedType4);
                            if (String.class == Wwwwwwwwwwwwwwwwwwwwwwwwwwww7) {
                                Type Wwwwwwwwwwwwwwwwwwwwwwwwwwww8 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1, parameterizedType4);
                                if (!MultipartBody.Part.class.isAssignableFrom(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww8))) {
                                    return new ParameterHandler.PartMap(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww8, annotationArr, this.f14324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), ((PartMap) annotation).encoding());
                                }
                                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                            }
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@PartMap keys must be of type String: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwww7, new Object[0]);
                        }
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@PartMap parameter type must be Map.", new Object[0]);
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
            } else if (annotation instanceof Body) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                if (!this.f14311Wwwwwwwwwwwwwwwwwww && !this.f14310Wwwwwwwwwwwwwwwwww) {
                    if (!this.f14319Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        try {
                            Converter Wwwwwwwwwwwwwwwwwwwwwwwwww6 = this.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(type, annotationArr, this.f14324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                            this.f14319Wwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                            return new ParameterHandler.Body(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Wwwwwwwwwwwwwwwwwwwwwwwwww6);
                        } catch (RuntimeException e) {
                            throw Utils.Wwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e, i, "Unable to create @Body converter for %s", type);
                        }
                    }
                    throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "Multiple @Body method annotations found.", new Object[0]);
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
            } else if (annotation instanceof Tag) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(i, type);
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww11 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    ParameterHandler<?> parameterHandler = this.f14305Wwwwwwwwwwwww[i2];
                    if ((parameterHandler instanceof ParameterHandler.Tag) && ((ParameterHandler.Tag) parameterHandler).f14271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwww11)) {
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "@Tag type " + Wwwwwwwwwwwwwwwwwwwwwwwwwww11.getName() + " is duplicate of parameter #" + (i2 + 1) + " and would always overwrite its value.", new Object[0]);
                    }
                }
                return new ParameterHandler.Tag(Wwwwwwwwwwwwwwwwwwwwwwwwwww11);
            } else {
                return null;
            }
        }

        @Nullable
        public final ParameterHandler<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Type type, @Nullable Annotation[] annotationArr, boolean z) {
            ParameterHandler<?> parameterHandler;
            if (annotationArr != null) {
                parameterHandler = null;
                for (Annotation annotation : annotationArr) {
                    ParameterHandler<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, type, annotationArr, annotation);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        if (parameterHandler == null) {
                            parameterHandler = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        } else {
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                    }
                }
            } else {
                parameterHandler = null;
            }
            if (parameterHandler == null) {
                if (z) {
                    try {
                        if (Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type) == Continuation.class) {
                            this.f14304Wwwwwwwwwwww = true;
                            return null;
                        }
                    } catch (NoClassDefFoundError unused) {
                    }
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, "No Retrofit annotation found.", new Object[0]);
            }
            return parameterHandler;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Annotation annotation) {
            if (annotation instanceof DELETE) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("DELETE", ((DELETE) annotation).value(), false);
            } else if (annotation instanceof GET) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("GET", ((GET) annotation).value(), false);
            } else if (annotation instanceof HEAD) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("HEAD", ((HEAD) annotation).value(), false);
            } else if (annotation instanceof PATCH) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("PATCH", ((PATCH) annotation).value(), true);
            } else if (annotation instanceof POST) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareTarget.METHOD_POST, ((POST) annotation).value(), true);
            } else if (annotation instanceof PUT) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("PUT", ((PUT) annotation).value(), true);
            } else if (annotation instanceof OPTIONS) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("OPTIONS", ((OPTIONS) annotation).value(), false);
            } else if (annotation instanceof HTTP) {
                HTTP http = (HTTP) annotation;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(http.method(), http.path(), http.hasBody());
            } else if (annotation instanceof retrofit2.http.Headers) {
                String[] value = ((retrofit2.http.Headers) annotation).value();
                if (value.length != 0) {
                    this.f14308Wwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(value);
                    return;
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "@Headers annotation is empty.", new Object[0]);
            } else if (annotation instanceof Multipart) {
                if (!this.f14311Wwwwwwwwwwwwwwwwwww) {
                    this.f14310Wwwwwwwwwwwwwwwwww = true;
                    return;
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Only one encoding annotation is allowed.", new Object[0]);
            } else if (annotation instanceof FormUrlEncoded) {
                if (!this.f14310Wwwwwwwwwwwwwwwwww) {
                    this.f14311Wwwwwwwwwwwwwwwwwww = true;
                    return;
                }
                throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Only one encoding annotation is allowed.", new Object[0]);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, boolean z) {
            String str3 = this.f14313Wwwwwwwwwwwwwwwwwwwww;
            if (str3 == null) {
                this.f14313Wwwwwwwwwwwwwwwwwwwww = str;
                this.f14312Wwwwwwwwwwwwwwwwwwww = z;
                if (str2.isEmpty()) {
                    return;
                }
                int indexOf = str2.indexOf(63);
                if (indexOf != -1 && indexOf < str2.length() - 1) {
                    String substring = str2.substring(indexOf + 1);
                    if (f14303Wwwwwwwwwww.matcher(substring).find()) {
                        throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                    }
                }
                this.f14309Wwwwwwwwwwwwwwwww = str2;
                this.f14306Wwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
                return;
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
        }

        public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String[] strArr) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf != -1 && indexOf != 0 && indexOf != str.length() - 1) {
                    String substring = str.substring(0, indexOf);
                    String trim = str.substring(indexOf + 1).trim();
                    if ("Content-Type".equalsIgnoreCase(substring)) {
                        try {
                            this.f14307Wwwwwwwwwwwwwww = MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(trim);
                        } catch (IllegalArgumentException e) {
                            throw Utils.Wwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e, "Malformed content type: %s", trim);
                        }
                    } else {
                        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring, trim);
                    }
                } else {
                    throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
            }
            return builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public RequestFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            boolean z;
            for (Annotation annotation : this.f14324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(annotation);
            }
            if (this.f14313Wwwwwwwwwwwwwwwwwwwww != null) {
                if (!this.f14312Wwwwwwwwwwwwwwwwwwww) {
                    if (!this.f14310Wwwwwwwwwwwwwwwwww) {
                        if (this.f14311Wwwwwwwwwwwwwwwwwww) {
                            throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                        }
                    } else {
                        throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                }
                int length = this.f14323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length;
                this.f14305Wwwwwwwwwwwww = new ParameterHandler[length];
                int i = length - 1;
                for (int i2 = 0; i2 < length; i2++) {
                    ParameterHandler<?>[] parameterHandlerArr = this.f14305Wwwwwwwwwwwww;
                    Type type = this.f14322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i2];
                    Annotation[] annotationArr = this.f14323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i2];
                    if (i2 == i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    parameterHandlerArr[i2] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, type, annotationArr, z);
                }
                if (this.f14309Wwwwwwwwwwwwwwwww == null && !this.f14314Wwwwwwwwwwwwwwwwwwwwww) {
                    throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Missing either @%s URL or @Url parameter.", this.f14313Wwwwwwwwwwwwwwwwwwwww);
                }
                boolean z2 = this.f14311Wwwwwwwwwwwwwwwwwww;
                if (!z2 && !this.f14310Wwwwwwwwwwwwwwwwww && !this.f14312Wwwwwwwwwwwwwwwwwwww && this.f14319Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                }
                if (z2 && !this.f14321Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Form-encoded method must contain at least one @Field.", new Object[0]);
                }
                if (this.f14310Wwwwwwwwwwwwwwwwww && !this.f14320Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Multipart method must contain at least one @Part.", new Object[0]);
                }
                return new RequestFactory(this);
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
        }
    }

    public RequestFactory(Builder builder) {
        this.f14301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f14325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f14300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f14326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f14334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f14299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f14313Wwwwwwwwwwwwwwwwwwwww;
        this.f14298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f14309Wwwwwwwwwwwwwwwww;
        this.f14297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f14308Wwwwwwwwwwwwwwww;
        this.f14296Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f14307Wwwwwwwwwwwwwww;
        this.f14295Wwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f14312Wwwwwwwwwwwwwwwwwwww;
        this.f14294Wwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f14311Wwwwwwwwwwwwwwwwwww;
        this.f14293Wwwwwwwwwwwwwwwwwwwwwwwwww = builder.f14310Wwwwwwwwwwwwwwwwww;
        this.f14292Wwwwwwwwwwwwwwwwwwwwwwwww = builder.f14305Wwwwwwwwwwwww;
        this.f14291Wwwwwwwwwwwwwwwwwwwwwwww = builder.f14304Wwwwwwwwwwww;
    }

    public static RequestFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Retrofit retrofit, Method method) {
        return new Builder(retrofit, method).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object[] objArr) throws IOException {
        ParameterHandler<?>[] parameterHandlerArr = this.f14292Wwwwwwwwwwwwwwwwwwwwwwwww;
        int length = objArr.length;
        if (length == parameterHandlerArr.length) {
            RequestBuilder requestBuilder = new RequestBuilder(this.f14299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14296Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14295Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14294Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14293Wwwwwwwwwwwwwwwwwwwwwwwwww);
            if (this.f14291Wwwwwwwwwwwwwwwwwwwwwwww) {
                length--;
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                arrayList.add(objArr[i]);
                parameterHandlerArr[i].Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestBuilder, objArr[i]);
            }
            return requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(Invocation.class, new Invocation(this.f14301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, arrayList)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + parameterHandlerArr.length + ")");
    }
}
