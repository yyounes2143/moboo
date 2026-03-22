package io.flutter.plugins.webviewflutter;

import com.google.firebase.analytics.FirebaseAnalytics;
import io.flutter.plugins.webviewflutter.ResultCompat;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \u0013*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0013B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0011\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\bJ\b\u0010\u0012\u001a\u0004\u0018\u00010\fR\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0012\u0010\n\u001a\u0004\u0018\u00018\u0000X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u0014"}, d2 = {"Lio/flutter/plugins/webviewflutter/ResultCompat;", "T", "", "result", "Lkotlin/Result;", "<init>", "(Ljava/lang/Object;)V", "getResult-d1pmJ48", "()Ljava/lang/Object;", "Ljava/lang/Object;", "value", "exception", "", "isSuccess", "", "()Z", "isFailure", "getOrNull", "exceptionOrNull", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class ResultCompat<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final Throwable exception;
    private final boolean isFailure;
    private final boolean isSuccess;
    @NotNull
    private final Object result;
    @Nullable
    private final T value;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\u0004\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u00062\u0006\u0010\u0007\u001a\u0002H\u00062\u0006\u0010\b\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\tJ:\u0010\n\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\f\u0012\u0004\u0012\u00020\u00050\u000b\"\u0004\b\u0001\u0010\u00062\u0018\u0010\r\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u000e\u0012\u0004\u0012\u00020\u00050\u000bH\u0007¨\u0006\u000f"}, d2 = {"Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;", "", "<init>", "()V", FirebaseAnalytics.Param.SUCCESS, "", "T", "value", "callback", "(Ljava/lang/Object;Ljava/lang/Object;)V", "asCompatCallback", "Lkotlin/Function1;", "Lkotlin/Result;", "result", "Lio/flutter/plugins/webviewflutter/ResultCompat;", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit asCompatCallback$lambda$0(Function1 function1, Result result) {
            function1.invoke(new ResultCompat(result.m447unboximpl()));
            return Unit.INSTANCE;
        }

        @JvmStatic
        @NotNull
        public final <T> Function1<Result<? extends T>, Unit> asCompatCallback(@NotNull final Function1<? super ResultCompat<T>, Unit> function1) {
            return new Function1() { // from class: io.flutter.plugins.webviewflutter.Mmmmmmm
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit asCompatCallback$lambda$0;
                    asCompatCallback$lambda$0 = ResultCompat.Companion.asCompatCallback$lambda$0(Function1.this, (Result) obj);
                    return asCompatCallback$lambda$0;
                }
            };
        }

        @JvmStatic
        public final <T> void success(T t, @NotNull Object obj) {
            ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 1)).invoke(Result.m437boximpl(Result.m438constructorimpl(t)));
        }

        private Companion() {
        }
    }

    public ResultCompat(@NotNull Object obj) {
        T t;
        this.result = obj;
        if (Result.m444isFailureimpl(obj)) {
            t = null;
        } else {
            t = (T) obj;
        }
        this.value = t;
        this.exception = Result.m441exceptionOrNullimpl(obj);
        this.isSuccess = Result.m445isSuccessimpl(obj);
        this.isFailure = Result.m444isFailureimpl(obj);
    }

    @JvmStatic
    @NotNull
    public static final <T> Function1<Result<? extends T>, Unit> asCompatCallback(@NotNull Function1<? super ResultCompat<T>, Unit> function1) {
        return Companion.asCompatCallback(function1);
    }

    @JvmStatic
    public static final <T> void success(T t, @NotNull Object obj) {
        Companion.success(t, obj);
    }

    @Nullable
    public final Throwable exceptionOrNull() {
        return this.exception;
    }

    @Nullable
    public final T getOrNull() {
        return this.value;
    }

    @NotNull
    /* renamed from: getResult-d1pmJ48  reason: not valid java name */
    public final Object m424getResultd1pmJ48() {
        return this.result;
    }

    public final boolean isFailure() {
        return this.isFailure;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }
}
