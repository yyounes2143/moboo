package com.changdu.mobovideo.net;

import com.changdu.mobovideo.utils.CoroutineUtil;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ1\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u000e\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;", "Lokhttp3/Interceptor;", "<init>", "()V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "response", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/Exception;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)Ljava/lang/String;", "Lkotlinx/coroutines/CoroutineScope;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/CoroutineScope;", "mLoaderScope", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoHttpErrorReportInterceptor implements Interceptor {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineScope f5558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("VideoHttpErrorReportInterceptor");

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, Response response, Exception exc) {
        BuildersKt__Builders_commonKt.launch$default(this.f5558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null, new VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1(exc, this, request, response, null), 3, null);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
        String str;
        Charset Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String str2 = "";
        try {
            str2 = "request: \n  method = " + request.Wwwwwwwwwwwwwwwwwwwwwwwwwww() + "\n  url = " + request.Wwwwwwwwwwwwwwwwwwwwwwww() + "\n  request header = " + request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Buffer buffer = new Buffer();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeTo(buffer);
                MediaType contentType = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contentType();
                if (contentType == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Charset.forName("UTF-8");
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = contentType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Charset.forName("UTF-8"));
                }
                str = buffer.Wwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } else {
                str = null;
            }
            return str2 + "\n  request params = " + ((Object) str);
        } catch (Exception unused) {
            return str2;
        }
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Response response;
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        IOException iOException = null;
        try {
            response = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (IOException e) {
            e.printStackTrace();
            iOException = e;
            response = null;
        }
        if (iOException != null || response == null || response.Kkkkkkkkkkkkkkkkkkkkkk() >= 400) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, response, iOException);
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
