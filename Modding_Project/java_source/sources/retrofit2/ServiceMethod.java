package retrofit2;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class ServiceMethod<T> {
    public static <T> ServiceMethod<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Retrofit retrofit, Method method) {
        RequestFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RequestFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(retrofit, method);
        Type genericReturnType = method.getGenericReturnType();
        if (!Utils.Wwwwwwwwwwwwwwwwwwwwwwwww(genericReturnType)) {
            if (genericReturnType != Void.TYPE) {
                return HttpServiceMethod.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(retrofit, method, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            throw Utils.Wwwwwwwwwwwwwwwwwwwwww(method, "Service methods cannot return void.", new Object[0]);
        }
        throw Utils.Wwwwwwwwwwwwwwwwwwwwww(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType);
    }

    @Nullable
    public abstract T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object[] objArr);
}
