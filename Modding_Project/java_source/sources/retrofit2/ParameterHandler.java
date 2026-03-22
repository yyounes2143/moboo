package retrofit2;

import com.google.common.net.HttpHeaders;
import j$.util.Objects;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Map;
import javax.annotation.Nullable;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class ParameterHandler<T> {

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Body<T> extends ParameterHandler<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, RequestBody> f14230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Body(Method method, int i, Converter<T, RequestBody> converter) {
            this.f14232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f14230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
        }

        @Override // retrofit2.ParameterHandler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable T t) {
            if (t != null) {
                try {
                    requestBuilder.Wwwwwwwwwwwwwwwwwwwwwww(this.f14230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(t));
                    return;
                } catch (IOException e) {
                    Method method = this.f14232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    int i = this.f14231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    throw Utils.Wwwwwwwwwwwwwwwwwww(method, e, i, "Unable to convert " + t + " to RequestBody", new Object[0]);
                }
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Body parameter value must not be null.", new Object[0]);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Field<T> extends ParameterHandler<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f14233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, String> f14234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Field(String str, Converter<T, String> converter, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.f14235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f14234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
            this.f14233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // retrofit2.ParameterHandler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable T t) throws IOException {
            String convert;
            if (t == null || (convert = this.f14234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(t)) == null) {
                return;
            }
            requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, convert, this.f14233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class FieldMap<T> extends ParameterHandler<Map<String, T>> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f14236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, String> f14237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public FieldMap(Method method, int i, Converter<T, String> converter, boolean z) {
            this.f14239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f14237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
            this.f14236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // retrofit2.ParameterHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.f14237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(value);
                            if (convert != null) {
                                requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, convert, this.f14236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                            } else {
                                Method method = this.f14239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                int i = this.f14238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                throw Utils.Wwwwwwwwwwwwwwwwwwww(method, i, "Field map value '" + value + "' converted to null by " + this.f14237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.f14239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            int i2 = this.f14238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(method2, i2, "Field map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Field map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Field map was null.", new Object[0]);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Header<T> extends ParameterHandler<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, String> f14240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Header(String str, Converter<T, String> converter) {
            Objects.requireNonNull(str, "name == null");
            this.f14241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f14240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
        }

        @Override // retrofit2.ParameterHandler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable T t) throws IOException {
            String convert;
            if (t == null || (convert = this.f14240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(t)) == null) {
                return;
            }
            requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, convert);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class HeaderMap<T> extends ParameterHandler<Map<String, T>> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, String> f14242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public HeaderMap(Method method, int i, Converter<T, String> converter) {
            this.f14244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f14242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
        }

        @Override // retrofit2.ParameterHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, this.f14242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(value));
                        } else {
                            Method method = this.f14244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            int i = this.f14243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(method, i, "Header map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Header map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Header map was null.", new Object[0]);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Headers extends ParameterHandler<okhttp3.Headers> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Headers(Method method, int i) {
            this.f14246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        @Override // retrofit2.ParameterHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable okhttp3.Headers headers) {
            if (headers != null) {
                requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers);
                return;
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Headers parameter must not be null.", new Object[0]);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Part<T> extends ParameterHandler<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, RequestBody> f14247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final okhttp3.Headers f14248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14249Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14250Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Part(Method method, int i, okhttp3.Headers headers, Converter<T, RequestBody> converter) {
            this.f14250Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14249Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f14248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = headers;
            this.f14247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
        }

        @Override // retrofit2.ParameterHandler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable T t) {
            if (t == null) {
                return;
            }
            try {
                requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(t));
            } catch (IOException e) {
                Method method = this.f14250Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int i = this.f14249Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                throw Utils.Wwwwwwwwwwwwwwwwwwww(method, i, "Unable to convert " + t + " to RequestBody", e);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class PartMap<T> extends ParameterHandler<Map<String, T>> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, RequestBody> f14252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PartMap(Method method, int i, Converter<T, RequestBody> converter, String str) {
            this.f14254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f14252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
            this.f14251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @Override // retrofit2.ParameterHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okhttp3.Headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.CONTENT_DISPOSITION, "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.f14251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f14252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(value));
                        } else {
                            Method method = this.f14254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            int i = this.f14253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(method, i, "Part map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Part map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Part map was null.", new Object[0]);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Path<T> extends ParameterHandler<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f14255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, String> f14256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Path(Method method, int i, String str, Converter<T, String> converter, boolean z) {
            this.f14259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            Objects.requireNonNull(str, "name == null");
            this.f14257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f14256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
            this.f14255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // retrofit2.ParameterHandler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable T t) throws IOException {
            if (t != null) {
                requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(t), this.f14255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                return;
            }
            Method method = this.f14259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i = this.f14258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            throw Utils.Wwwwwwwwwwwwwwwwwwww(method, i, "Path parameter \"" + this.f14257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\" value must not be null.", new Object[0]);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Query<T> extends ParameterHandler<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f14260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, String> f14261Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Query(String str, Converter<T, String> converter, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.f14262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f14261Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
            this.f14260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // retrofit2.ParameterHandler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable T t) throws IOException {
            String convert;
            if (t == null || (convert = this.f14261Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(t)) == null) {
                return;
            }
            requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, convert, this.f14260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class QueryMap<T> extends ParameterHandler<Map<String, T>> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f14263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, String> f14264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public QueryMap(Method method, int i, Converter<T, String> converter, boolean z) {
            this.f14266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f14264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
            this.f14263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // retrofit2.ParameterHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.f14264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(value);
                            if (convert != null) {
                                requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(key, convert, this.f14263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                            } else {
                                Method method = this.f14266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                int i = this.f14265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                throw Utils.Wwwwwwwwwwwwwwwwwwww(method, i, "Query map value '" + value + "' converted to null by " + this.f14264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.f14266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            int i2 = this.f14265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            throw Utils.Wwwwwwwwwwwwwwwwwwww(method2, i2, "Query map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Query map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Query map was null", new Object[0]);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class QueryName<T> extends ParameterHandler<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f14267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<T, String> f14268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public QueryName(Converter<T, String> converter, boolean z) {
            this.f14268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
            this.f14267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // retrofit2.ParameterHandler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable T t) throws IOException {
            if (t == null) {
                return;
            }
            requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(t), null, this.f14267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class RawPart extends ParameterHandler<MultipartBody.Part> {
        static final RawPart INSTANCE = new RawPart();

        @Override // retrofit2.ParameterHandler
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable MultipartBody.Part part) {
            if (part != null) {
                requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(part);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class RelativeUrl extends ParameterHandler<Object> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f14270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public RelativeUrl(Method method, int i) {
            this.f14270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
            this.f14269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        @Override // retrofit2.ParameterHandler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable Object obj) {
            if (obj != null) {
                requestBuilder.Wwwwwwwwwwwwwwwwwwwwww(obj);
                return;
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwww(this.f14270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "@Url parameter is null.", new Object[0]);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Tag<T> extends ParameterHandler<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<T> f14271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Tag(Class<T> cls) {
            this.f14271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        }

        @Override // retrofit2.ParameterHandler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable T t) {
            requestBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, t);
        }
    }

    public final ParameterHandler<Iterable<T>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new ParameterHandler<Iterable<T>>() { // from class: retrofit2.ParameterHandler.1
            @Override // retrofit2.ParameterHandler
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable Iterable<T> iterable) throws IOException {
                if (iterable != null) {
                    for (T t : iterable) {
                        ParameterHandler.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestBuilder, t);
                    }
                }
            }
        };
    }

    public final ParameterHandler<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new ParameterHandler<Object>() { // from class: retrofit2.ParameterHandler.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // retrofit2.ParameterHandler
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable Object obj) throws IOException {
                if (obj != null) {
                    int length = Array.getLength(obj);
                    for (int i = 0; i < length; i++) {
                        ParameterHandler.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestBuilder, Array.get(obj, i));
                    }
                }
            }
        };
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RequestBuilder requestBuilder, @Nullable T t) throws IOException;
}
