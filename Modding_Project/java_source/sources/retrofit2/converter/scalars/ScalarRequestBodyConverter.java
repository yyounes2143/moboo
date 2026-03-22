package retrofit2.converter.scalars;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class ScalarRequestBodyConverter<T> implements Converter<T, RequestBody> {
    static final ScalarRequestBodyConverter<Object> INSTANCE = new ScalarRequestBodyConverter<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaType f14368Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("text/plain; charset=UTF-8");

    @Override // retrofit2.Converter
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public RequestBody convert(T t) throws IOException {
        return RequestBody.create(f14368Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, String.valueOf(t));
    }
}
