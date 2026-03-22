package com.vungle.ads.internal.network;

import com.vungle.ads.internal.network.converters.Converter;
import com.vungle.ads.internal.util.Logger;
import j$.util.Objects;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u0018*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0003\u0018\u0019\u001aB%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006¢\u0006\u0002\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0010\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\nH\u0016J\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/vungle/ads/internal/network/OkHttpCall;", "T", "Lcom/vungle/ads/internal/network/Call;", "rawCall", "Lokhttp3/Call;", "responseConverter", "Lcom/vungle/ads/internal/network/converters/Converter;", "Lokhttp3/ResponseBody;", "(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/Converter;)V", "canceled", "", "buffer", "body", "cancel", "", "enqueue", "callback", "Lcom/vungle/ads/internal/network/Callback;", "execute", "Lcom/vungle/ads/internal/network/Response;", "isCanceled", "parseResponse", "rawResp", "Lokhttp3/Response;", "Companion", "ExceptionCatchingResponseBody", "NoContentResponseBody", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class OkHttpCall<T> implements Call<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "OkHttpCall";
    private volatile boolean canceled;
    @NotNull
    private final okhttp3.Call rawCall;
    @NotNull
    private final Converter<ResponseBody, T> responseConverter;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/network/OkHttpCall$Companion;", "", "()V", "TAG", "", "throwIfFatal", "", "t", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void throwIfFatal(Throwable th) {
            if (!(th instanceof VirtualMachineError)) {
                if (!(th instanceof ThreadDeath)) {
                    if (!(th instanceof LinkageError)) {
                        return;
                    }
                    throw th;
                }
                throw th;
            }
            throw th;
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\u0006\u0010\u0013\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/vungle/ads/internal/network/OkHttpCall$ExceptionCatchingResponseBody;", "Lokhttp3/ResponseBody;", "delegate", "(Lokhttp3/ResponseBody;)V", "delegateSource", "Lokio/BufferedSource;", "thrownException", "Ljava/io/IOException;", "getThrownException", "()Ljava/io/IOException;", "setThrownException", "(Ljava/io/IOException;)V", "close", "", "contentLength", "", "contentType", "Lokhttp3/MediaType;", "source", "throwIfCaught", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class ExceptionCatchingResponseBody extends ResponseBody {
        @NotNull
        private final ResponseBody delegate;
        @NotNull
        private final BufferedSource delegateSource;
        @Nullable
        private IOException thrownException;

        public ExceptionCatchingResponseBody(@NotNull ResponseBody responseBody) {
            this.delegate = responseBody;
            this.delegateSource = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ForwardingSource(responseBody.source()) { // from class: com.vungle.ads.internal.network.OkHttpCall.ExceptionCatchingResponseBody.1
                @Override // okio.ForwardingSource, okio.Source
                public long read(@NotNull Buffer buffer, long j) throws IOException {
                    try {
                        return super.read(buffer, j);
                    } catch (IOException e) {
                        ExceptionCatchingResponseBody.this.setThrownException(e);
                        throw e;
                    }
                }
            });
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.ResponseBody
        @Nullable
        public MediaType contentType() {
            return this.delegate.contentType();
        }

        @Nullable
        public final IOException getThrownException() {
            return this.thrownException;
        }

        public final void setThrownException(@Nullable IOException iOException) {
            this.thrownException = iOException;
        }

        @Override // okhttp3.ResponseBody
        @NotNull
        public BufferedSource source() {
            return this.delegateSource;
        }

        public final void throwIfCaught() throws IOException {
            IOException iOException = this.thrownException;
            if (iOException == null) {
                return;
            }
            throw iOException;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/network/OkHttpCall$NoContentResponseBody;", "Lokhttp3/ResponseBody;", "contentType", "Lokhttp3/MediaType;", "contentLength", "", "(Lokhttp3/MediaType;J)V", "source", "Lokio/BufferedSource;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class NoContentResponseBody extends ResponseBody {
        private final long contentLength;
        @Nullable
        private final MediaType contentType;

        public NoContentResponseBody(@Nullable MediaType mediaType, long j) {
            this.contentType = mediaType;
            this.contentLength = j;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.contentLength;
        }

        @Override // okhttp3.ResponseBody
        @Nullable
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // okhttp3.ResponseBody
        @NotNull
        public BufferedSource source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public OkHttpCall(@NotNull okhttp3.Call call, @NotNull Converter<ResponseBody, T> converter) {
        this.rawCall = call;
        this.responseConverter = converter;
    }

    private final ResponseBody buffer(ResponseBody responseBody) throws IOException {
        Buffer buffer = new Buffer();
        responseBody.source().Wwww(buffer);
        return ResponseBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer, responseBody.contentType(), responseBody.contentLength());
    }

    @Override // com.vungle.ads.internal.network.Call
    public void cancel() {
        okhttp3.Call call;
        this.canceled = true;
        synchronized (this) {
            call = this.rawCall;
            Unit unit = Unit.INSTANCE;
        }
        call.cancel();
    }

    @Override // com.vungle.ads.internal.network.Call
    public void enqueue(@NotNull final Callback<T> callback) {
        okhttp3.Call call;
        Objects.requireNonNull(callback, "callback == null");
        synchronized (this) {
            call = this.rawCall;
            Unit unit = Unit.INSTANCE;
        }
        if (this.canceled) {
            call.cancel();
        }
        call.Wwwwwwwwwwwwww(new okhttp3.Callback(this) { // from class: com.vungle.ads.internal.network.OkHttpCall$enqueue$2
            final /* synthetic */ OkHttpCall<T> this$0;

            {
                this.this$0 = this;
            }

            private final void callFailure(Throwable th) {
                try {
                    callback.onFailure(this.this$0, th);
                } catch (Throwable th2) {
                    OkHttpCall.Companion.throwIfFatal(th2);
                    Logger.Companion.e("OkHttpCall", "Cannot pass failure to callback", th2);
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(@NotNull okhttp3.Call call2, @NotNull IOException iOException) {
                callFailure(iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(@NotNull okhttp3.Call call2, @NotNull okhttp3.Response response) {
                try {
                    try {
                        callback.onResponse(this.this$0, this.this$0.parseResponse(response));
                    } catch (Throwable th) {
                        OkHttpCall.Companion.throwIfFatal(th);
                        Logger.Companion.e("OkHttpCall", "Cannot pass response to callback", th);
                    }
                } catch (Throwable th2) {
                    OkHttpCall.Companion.throwIfFatal(th2);
                    callFailure(th2);
                }
            }
        });
    }

    @Override // com.vungle.ads.internal.network.Call
    @Nullable
    public Response<T> execute() throws IOException {
        okhttp3.Call call;
        synchronized (this) {
            call = this.rawCall;
            Unit unit = Unit.INSTANCE;
        }
        if (this.canceled) {
            call.cancel();
        }
        return parseResponse(call.execute());
    }

    @Override // com.vungle.ads.internal.network.Call
    public boolean isCanceled() {
        boolean isCanceled;
        if (this.canceled) {
            return true;
        }
        synchronized (this) {
            isCanceled = this.rawCall.isCanceled();
        }
        return isCanceled;
    }

    @Nullable
    public final Response<T> parseResponse(@NotNull okhttp3.Response response) throws IOException {
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        okhttp3.Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Kkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new NoContentResponseBody(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contentType(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contentLength())).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Kkkkkkkkkkkkkkkkkkkkkk2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkk();
        if (Kkkkkkkkkkkkkkkkkkkkkk2 >= 200 && Kkkkkkkkkkkkkkkkkkkkkk2 < 300) {
            if (Kkkkkkkkkkkkkkkkkkkkkk2 != 204 && Kkkkkkkkkkkkkkkkkkkkkk2 != 205) {
                ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                try {
                    return Response.Companion.success(this.responseConverter.convert(exceptionCatchingResponseBody), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } catch (Throwable th) {
                    exceptionCatchingResponseBody.throwIfCaught();
                    throw th;
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
            return Response.Companion.success(null, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        try {
            Response<T> error = Response.Companion.error(buffer(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
            return error;
        } finally {
        }
    }
}
