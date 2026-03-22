package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class GsonConverterFactory extends Converter.Factory {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Gson f14361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public GsonConverterFactory(Gson gson) {
        this.f14361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = gson;
    }

    public static GsonConverterFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Gson gson) {
        if (gson != null) {
            return new GsonConverterFactory(gson);
        }
        throw new NullPointerException("gson == null");
    }

    public static GsonConverterFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Gson());
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new GsonRequestBodyConverter(this.f14361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAdapter(TypeToken.get(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new GsonResponseBodyConverter(this.f14361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAdapter(TypeToken.get(type)));
    }
}
