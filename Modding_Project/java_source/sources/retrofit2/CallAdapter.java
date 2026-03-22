package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public interface CallAdapter<R, T> {

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static abstract class Factory {
        public static Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Type type) {
            return Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(type);
        }

        public static Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, ParameterizedType parameterizedType) {
            return Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, parameterizedType);
        }

        @Nullable
        public abstract CallAdapter<?, ?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Type type, Annotation[] annotationArr, Retrofit retrofit);
    }

    T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call<R> call);

    Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
}
