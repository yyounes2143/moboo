package com.changdu.component.http;

import android.os.SystemClock;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.annotation.AnnotationTarget;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import retrofit2.Invocation;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\u00020\u0001:\u0003\u0007\b\tB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\n"}, d2 = {"Lcom/changdu/component/http/CDHttpRetryInterceptor;", "Lokhttp3/Interceptor;", "()V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "Companion", "NeedRetry", "UrlHostReplaceTagName", "http_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDHttpRetryInterceptor implements Interceptor {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/changdu/component/http/CDHttpRetryInterceptor$Companion;", "", "", "DEFAULT_MAX_RETRY_COUNT", "I", "DEFAULT_RETRY_DELAY_IN_MILLISECONDS", "http_release"}, k = 1, mv = {1, 9, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Target({ElementType.METHOD})
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001B\u001e\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0007R\u000f\u0010\u0004\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0004\u0010\bR\u000f\u0010\u0006\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\b¨\u0006\t"}, d2 = {"Lcom/changdu/component/http/CDHttpRetryInterceptor$NeedRetry;", "", "needRetry", "", "retryCount", "", "retryDelayInMillis", "()Z", "()I", "http_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @kotlin.annotation.Target(allowedTargets = {AnnotationTarget.FUNCTION, AnnotationTarget.PROPERTY_GETTER, AnnotationTarget.PROPERTY_SETTER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface NeedRetry {
        boolean needRetry() default true;

        int retryCount() default 1;

        int retryDelayInMillis() default 2000;
    }

    /* compiled from: Proguard */
    @Target({ElementType.METHOD})
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\u0002\u0018\u00002\u00020\u0001B\b\u0012\u0006\u0010\u0002\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/changdu/component/http/CDHttpRetryInterceptor$UrlHostReplaceTagName;", "", "hostTagName", "", "()Ljava/lang/String;", "http_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @kotlin.annotation.Target(allowedTargets = {AnnotationTarget.FUNCTION, AnnotationTarget.PROPERTY_GETTER, AnnotationTarget.PROPERTY_SETTER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface UrlHostReplaceTagName {
        String hostTagName();
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        UrlHostReplaceTagName urlHostReplaceTagName;
        NeedRetry needRetry;
        boolean z;
        int i;
        int i2;
        Response response;
        String Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        String retryHost;
        Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Invocation invocation = (Invocation) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwww(Invocation.class);
        IOException iOException = null;
        if (invocation != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = invocation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
            urlHostReplaceTagName = (UrlHostReplaceTagName) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.getAnnotation(UrlHostReplaceTagName.class);
        } else {
            urlHostReplaceTagName = null;
        }
        if (urlHostReplaceTagName != null) {
            urlHostReplaceTagName.hostTagName();
        }
        if (invocation != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = invocation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
            needRetry = (NeedRetry) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getAnnotation(NeedRetry.class);
        } else {
            needRetry = null;
        }
        int i3 = 0;
        if (needRetry != null) {
            z = needRetry.needRetry();
        } else {
            z = false;
        }
        if (needRetry != null) {
            i = needRetry.retryCount();
        } else {
            i = 1;
        }
        if (needRetry != null) {
            i2 = needRetry.retryDelayInMillis();
        } else {
            i2 = 2000;
        }
        try {
            response = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
            e = null;
        } catch (IOException e) {
            e = e;
            e.printStackTrace();
            response = null;
        }
        if ((e != null || response == null || !response.Kkkkkkkkkkkkkkk()) && z) {
            while (true) {
                if ((e == null && response != null && response.Kkkkkkkkkkkkkkk()) || i3 >= i) {
                    break;
                }
                SystemClock.sleep(i2);
                i3++;
                if (response != null) {
                    try {
                        response.close();
                    } catch (Exception e2) {
                        try {
                            e2.printStackTrace();
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                        }
                    }
                }
                response = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
                e = null;
            }
        }
        if ((e != null || response == null || !response.Kkkkkkkkkkkkkkk()) && (retryHost = HttpRequest.Companion.getRetryHost((Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww()))) != null && !StringsKt.isBlank(retryHost)) {
            Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww(retryHost).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Host", Wwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (response != null) {
                try {
                    try {
                        response.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } catch (IOException e5) {
                    iOException = e5;
                    iOException.printStackTrace();
                }
            }
            response = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } else {
            iOException = e;
        }
        if (iOException == null) {
            if (response != null) {
                return response;
            }
            throw new IOException();
        }
        throw iOException;
    }
}
