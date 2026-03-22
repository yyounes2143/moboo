package retrofit2;

import j$.util.Objects;
import java.io.IOException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class OkHttpCall<T> implements Call<T> {
    @GuardedBy

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f14211Wwwwwwwwwwwwwwwwww;
    @GuardedBy
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Throwable f14212Wwwwwwwwwwwwwwwwwww;
    @GuardedBy
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public okhttp3.Call f14213Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile boolean f14214Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Converter<ResponseBody, T> f14215Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Call.Factory f14216Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object[] f14217Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestFactory f14218Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class ExceptionCatchingResponseBody extends ResponseBody {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public IOException f14221Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BufferedSource f14222Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ResponseBody f14223Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ExceptionCatchingResponseBody(ResponseBody responseBody) {
            this.f14223Wwwwwwwwwwwwwwwwwwwwwwwww = responseBody;
            this.f14222Wwwwwwwwwwwwwwwwwwwwwwww = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ForwardingSource(responseBody.source()) { // from class: retrofit2.OkHttpCall.ExceptionCatchingResponseBody.1
                @Override // okio.ForwardingSource, okio.Source
                public long read(Buffer buffer, long j) throws IOException {
                    try {
                        return super.read(buffer, j);
                    } catch (IOException e) {
                        ExceptionCatchingResponseBody.this.f14221Wwwwwwwwwwwwwwwwwwwwwww = e;
                        throw e;
                    }
                }
            });
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f14223Wwwwwwwwwwwwwwwwwwwwwwwww.close();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.f14223Wwwwwwwwwwwwwwwwwwwwwwwww.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.f14223Wwwwwwwwwwwwwwwwwwwwwwwww.contentType();
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            return this.f14222Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public void throwIfCaught() throws IOException {
            IOException iOException = this.f14221Wwwwwwwwwwwwwwwwwwwwwww;
            if (iOException == null) {
                return;
            }
            throw iOException;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class NoContentResponseBody extends ResponseBody {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f14225Wwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaType f14226Wwwwwwwwwwwwwwwwwwwwwwwww;

        public NoContentResponseBody(@Nullable MediaType mediaType, long j) {
            this.f14226Wwwwwwwwwwwwwwwwwwwwwwwww = mediaType;
            this.f14225Wwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.f14225Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.f14226Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public OkHttpCall(RequestFactory requestFactory, Object[] objArr, Call.Factory factory, Converter<ResponseBody, T> converter) {
        this.f14218Wwwwwwwwwwwwwwwwwwwwwwwww = requestFactory;
        this.f14217Wwwwwwwwwwwwwwwwwwwwwwww = objArr;
        this.f14216Wwwwwwwwwwwwwwwwwwwwwww = factory;
        this.f14215Wwwwwwwwwwwwwwwwwwwwww = converter;
    }

    @Override // retrofit2.Call
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(final Callback<T> callback) {
        okhttp3.Call call;
        Throwable th;
        Objects.requireNonNull(callback, "callback == null");
        synchronized (this) {
            try {
                if (!this.f14211Wwwwwwwwwwwwwwwwww) {
                    this.f14211Wwwwwwwwwwwwwwwwww = true;
                    call = this.f14213Wwwwwwwwwwwwwwwwwwww;
                    th = this.f14212Wwwwwwwwwwwwwwwwwww;
                    if (call == null && th == null) {
                        okhttp3.Call Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        this.f14213Wwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        call = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                } else {
                    throw new IllegalStateException("Already executed.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (th != null) {
            callback.onFailure(this, th);
            return;
        }
        if (this.f14214Wwwwwwwwwwwwwwwwwwwww) {
            call.cancel();
        }
        call.Wwwwwwwwwwwwww(new okhttp3.Callback() { // from class: retrofit2.OkHttpCall.1
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th3) {
                try {
                    callback.onFailure(OkHttpCall.this, th3);
                } catch (Throwable th4) {
                    Utils.Wwwwwwwwwwwwwwww(th4);
                    th4.printStackTrace();
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(okhttp3.Call call2, IOException iOException) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(okhttp3.Call call2, okhttp3.Response response) {
                try {
                    try {
                        callback.onResponse(OkHttpCall.this, OkHttpCall.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response));
                    } catch (Throwable th3) {
                        Utils.Wwwwwwwwwwwwwwww(th3);
                        th3.printStackTrace();
                    }
                } catch (Throwable th4) {
                    Utils.Wwwwwwwwwwwwwwww(th4);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th4);
                }
            }
        });
    }

    public Response<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okhttp3.Response response) throws IOException {
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        okhttp3.Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Kkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new NoContentResponseBody(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contentType(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contentLength())).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Kkkkkkkkkkkkkkkkkkkkkk2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkk();
        if (Kkkkkkkkkkkkkkkkkkkkkk2 >= 200 && Kkkkkkkkkkkkkkkkkkkkkk2 < 300) {
            if (Kkkkkkkkkkkkkkkkkkkkkk2 != 204 && Kkkkkkkkkkkkkkkkkkkkkk2 != 205) {
                ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                try {
                    return Response.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14215Wwwwwwwwwwwwwwwwwwwwww.convert(exceptionCatchingResponseBody), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } catch (RuntimeException e) {
                    exceptionCatchingResponseBody.throwIfCaught();
                    throw e;
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
            return Response.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        try {
            return Response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } finally {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
        }
    }

    @GuardedBy
    public final okhttp3.Call Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        okhttp3.Call call = this.f14213Wwwwwwwwwwwwwwwwwwww;
        if (call != null) {
            return call;
        }
        Throwable th = this.f14212Wwwwwwwwwwwwwwwwwww;
        if (th != null) {
            if (!(th instanceof IOException)) {
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw ((Error) th);
            }
            throw ((IOException) th);
        }
        try {
            okhttp3.Call Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f14213Wwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } catch (IOException | Error | RuntimeException e) {
            Utils.Wwwwwwwwwwwwwwww(e);
            this.f14212Wwwwwwwwwwwwwwwwwww = e;
            throw e;
        }
    }

    public final okhttp3.Call Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        okhttp3.Call Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f14216Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14218Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14217Wwwwwwwwwwwwwwwwwwwwwwww));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    @Override // retrofit2.Call
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public OkHttpCall<T> mo2041clone() {
        return new OkHttpCall<>(this.f14218Wwwwwwwwwwwwwwwwwwwwwwwww, this.f14217Wwwwwwwwwwwwwwwwwwwwwwww, this.f14216Wwwwwwwwwwwwwwwwwwwwwww, this.f14215Wwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // retrofit2.Call
    public synchronized Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
        } catch (IOException e) {
            throw new RuntimeException("Unable to create request.", e);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // retrofit2.Call
    public void cancel() {
        okhttp3.Call call;
        this.f14214Wwwwwwwwwwwwwwwwwwwww = true;
        synchronized (this) {
            call = this.f14213Wwwwwwwwwwwwwwwwwwww;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // retrofit2.Call
    public Response<T> execute() throws IOException {
        okhttp3.Call Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        synchronized (this) {
            if (!this.f14211Wwwwwwwwwwwwwwwwww) {
                this.f14211Wwwwwwwwwwwwwwwwww = true;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.f14214Wwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.cancel();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.execute());
    }

    @Override // retrofit2.Call
    public boolean isCanceled() {
        boolean z = true;
        if (this.f14214Wwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        synchronized (this) {
            try {
                okhttp3.Call call = this.f14213Wwwwwwwwwwwwwwwwwwww;
                if (call == null || !call.isCanceled()) {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }
}
