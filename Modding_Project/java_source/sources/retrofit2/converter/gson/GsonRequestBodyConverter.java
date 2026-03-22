package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.Converter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class GsonRequestBodyConverter<T> implements Converter<T, RequestBody> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TypeAdapter<T> f14364Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Gson f14365Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaType f14363Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("application/json; charset=UTF-8");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Charset f14362Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Charset.forName("UTF-8");

    public GsonRequestBodyConverter(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f14365Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = gson;
        this.f14364Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = typeAdapter;
    }

    @Override // retrofit2.Converter
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public RequestBody convert(T t) throws IOException {
        Buffer buffer = new Buffer();
        JsonWriter newJsonWriter = this.f14365Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.newJsonWriter(new OutputStreamWriter(buffer.Www(), f14362Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        this.f14364Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.write(newJsonWriter, t);
        newJsonWriter.close();
        return RequestBody.create(f14363Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, buffer.Wwwwwww());
    }
}
