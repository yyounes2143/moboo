package com.changdu.component.httpbiz;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0007\u0018\u0000 \u00142\u00060\u0001j\u0002`\u0002:\u0001\u0015B\t\b\u0016¢\u0006\u0004\b\n\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\n\u0010\u000eB%\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\n\u0010\u0011B\u0019\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\n\u0010\u0012B\u0011\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\n\u0010\u0013R\"\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/changdu/component/httpbiz/CDHttpException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", "errorCode", "I", "getErrorCode", "()I", "setErrorCode", "(I)V", "<init>", "()V", "", "message", "(ILjava/lang/String;)V", "", "cause", "(ILjava/lang/String;Ljava/lang/Throwable;)V", "(ILjava/lang/Throwable;)V", "(Ljava/lang/Throwable;)V", "Companion", "com/changdu/component/httpbiz/d", "http-biz_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class CDHttpException extends Exception {
    @NotNull
    public static final d Companion = new d();
    public static final int ERROR_UNKNOWN = -1;
    private int errorCode;

    public CDHttpException() {
        this.errorCode = -1;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public CDHttpException(int i) {
        this.errorCode = -1;
        setErrorCode(i);
    }

    public CDHttpException(int i, @NotNull String str) {
        super(str);
        this.errorCode = -1;
        setErrorCode(i);
    }

    public CDHttpException(int i, @Nullable String str, @Nullable Throwable th) {
        super(str, th);
        this.errorCode = -1;
        setErrorCode(i);
    }

    public CDHttpException(int i, @NotNull Throwable th) {
        super(th);
        this.errorCode = -1;
        setErrorCode(i);
    }

    public CDHttpException(@NotNull Throwable th) {
        super(th);
        this.errorCode = -1;
    }
}
