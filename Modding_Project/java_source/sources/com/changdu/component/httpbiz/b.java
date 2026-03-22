package com.changdu.component.httpbiz;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.Converter;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class b implements Converter {
    public static final MediaType c = MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("application/json; charset=UTF-8");
    public static final Charset d = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    public final Gson f5334a;
    public final TypeAdapter b;

    public b(Gson gson, TypeAdapter typeAdapter) {
        this.f5334a = gson;
        this.b = typeAdapter;
    }

    @Override // retrofit2.Converter
    public final Object convert(Object obj) {
        Buffer buffer = new Buffer();
        JsonWriter newJsonWriter = this.f5334a.newJsonWriter(new OutputStreamWriter(buffer.Www(), d));
        this.b.write(newJsonWriter, obj);
        newJsonWriter.close();
        return RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(c, buffer.Wwwwwww());
    }
}
