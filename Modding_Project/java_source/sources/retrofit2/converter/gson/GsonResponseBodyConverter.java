package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class GsonResponseBodyConverter<T> implements Converter<ResponseBody, T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TypeAdapter<T> f14366Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Gson f14367Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public GsonResponseBodyConverter(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f14367Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = gson;
        this.f14366Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = typeAdapter;
    }

    @Override // retrofit2.Converter
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public T convert(ResponseBody responseBody) throws IOException {
        JsonReader newJsonReader = this.f14367Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.newJsonReader(responseBody.charStream());
        try {
            T read = this.f14366Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.read(newJsonReader);
            if (newJsonReader.peek() == JsonToken.END_DOCUMENT) {
                return read;
            }
            throw new JsonIOException("JSON document was not fully consumed.");
        } finally {
            responseBody.close();
        }
    }
}
