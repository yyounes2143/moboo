package com.changdu.component.httpbiz;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.Converter;
import retrofit2.Retrofit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class a extends Converter.Factory {
    public static final /* synthetic */ int b = 0;

    /* renamed from: a  reason: collision with root package name */
    public final Gson f5333a;

    public a(Gson gson) {
        this.f5333a = gson;
    }

    @Override // retrofit2.Converter.Factory
    public final Converter requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new b(this.f5333a, this.f5333a.getAdapter(TypeToken.get(type)));
    }

    @Override // retrofit2.Converter.Factory
    public final Converter responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        for (Annotation annotation : annotationArr) {
            if (annotation instanceof CDResponseAnnotation) {
                return new c(this.f5333a.getAdapter(TypeToken.get(type)), ((CDResponseAnnotation) annotation).responseObjectToString());
            }
        }
        return null;
    }
}
