package retrofit2;

import j$.util.Optional;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.ResponseBody;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import retrofit2.Converter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@IgnoreJRERequirement
/* loaded from: classes7.dex */
public final class OptionalConverterFactory extends Converter.Factory {
    static final Converter.Factory INSTANCE = new OptionalConverterFactory();

    /* compiled from: Proguard */
    @IgnoreJRERequirement
    /* loaded from: classes7.dex */
    public static final class OptionalConverter<T> implements Converter<ResponseBody, Optional<T>> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter<ResponseBody, T> f14227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public OptionalConverter(Converter<ResponseBody, T> converter) {
            this.f14227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
        }

        @Override // retrofit2.Converter
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Optional<T> convert(ResponseBody responseBody) throws IOException {
            return Optional.ofNullable(this.f14227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.convert(responseBody));
        }
    }

    @Override // retrofit2.Converter.Factory
    @Nullable
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (Converter.Factory.getRawType(type) != Optional.class) {
            return null;
        }
        return new OptionalConverter(retrofit.Wwwwwwwwwwwwwwwwwwwwwwwww(Converter.Factory.getParameterUpperBound(0, (ParameterizedType) type), annotationArr));
    }
}
