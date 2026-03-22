package com.unity3d.ads.network.mapper;

import com.unity3d.ads.network.model.HttpBody;
import com.unity3d.ads.network.model.HttpRequest;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\f\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0002\u001a\n\u0010\u0007\u001a\u00020\b*\u00020\u0006¨\u0006\t"}, d2 = {"generateOkHttpBody", "Lokhttp3/RequestBody;", "body", "Lcom/unity3d/ads/network/model/HttpBody;", "generateOkHttpHeaders", "Lokhttp3/Headers;", "Lcom/unity3d/ads/network/model/HttpRequest;", "toOkHttpRequest", "Lokhttp3/Request;", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttpRequestToOkHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/ads/network/mapper/HttpRequestToOkHttpRequestKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,25:1\n1#2:26\n215#3,2:27\n*S KotlinDebug\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/ads/network/mapper/HttpRequestToOkHttpRequestKt\n*L\n17#1:27,2\n*E\n"})
/* loaded from: classes6.dex */
public final class HttpRequestToOkHttpRequestKt {
    private static final RequestBody generateOkHttpBody(HttpBody httpBody) {
        if (httpBody instanceof HttpBody.StringBody) {
            return RequestBody.create(MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("text/plain;charset=utf-8"), ((HttpBody.StringBody) httpBody).getContent());
        }
        if (httpBody instanceof HttpBody.ByteArrayBody) {
            return RequestBody.create(MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("text/plain;charset=utf-8"), ((HttpBody.ByteArrayBody) httpBody).getContent());
        }
        if (httpBody instanceof HttpBody.EmptyBody) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    private static final Headers generateOkHttpHeaders(HttpRequest httpRequest) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, List<String>> entry : httpRequest.getHeaders().entrySet()) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry.getKey(), CollectionsKt.joinToString$default(entry.getValue(), ",", null, null, 0, null, null, 62, null));
        }
        return builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NotNull
    public static final Request toOkHttpRequest(@NotNull HttpRequest httpRequest) {
        Request.Builder builder = new Request.Builder();
        return builder.Wwwwwwwwwwwwwwwww(StringsKt.removeSuffix(StringsKt.trim(httpRequest.getBaseURL(), '/') + '/' + StringsKt.trim(httpRequest.getPath(), '/'), (CharSequence) "/")).Wwwwwwwwwwwwwwwwwwwwwwwwww(httpRequest.getMethod().toString(), generateOkHttpBody(httpRequest.getBody())).Wwwwwwwwwwwwwwwwwwwwwwwwwww(generateOkHttpHeaders(httpRequest)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
