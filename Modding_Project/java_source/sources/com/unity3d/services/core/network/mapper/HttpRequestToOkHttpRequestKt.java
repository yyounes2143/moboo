package com.unity3d.services.core.network.mapper;

import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.unity3d.services.core.network.model.HttpRequest;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002\u001a\u0012\u0010\u0004\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002\u001a\f\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0002\u001a\n\u0010\b\u001a\u00020\t*\u00020\u0007\u001a\n\u0010\n\u001a\u00020\t*\u00020\u0007¨\u0006\u000b"}, d2 = {"generateOkHttpBody", "Lokhttp3/RequestBody;", "body", "", "generateOkHttpProtobufBody", "generateOkHttpHeaders", "Lokhttp3/Headers;", "Lcom/unity3d/services/core/network/model/HttpRequest;", "toOkHttpProtoRequest", "Lokhttp3/Request;", "toOkHttpRequest", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttpRequestToOkHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/services/core/network/mapper/HttpRequestToOkHttpRequestKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,37:1\n1#2:38\n215#3,2:39\n*S KotlinDebug\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/services/core/network/mapper/HttpRequestToOkHttpRequestKt\n*L\n23#1:39,2\n*E\n"})
/* loaded from: classes6.dex */
public final class HttpRequestToOkHttpRequestKt {
    private static final RequestBody generateOkHttpBody(Object obj) {
        if (obj instanceof byte[]) {
            return RequestBody.create(MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("text/plain;charset=utf-8"), (byte[]) obj);
        }
        if (obj instanceof String) {
            return RequestBody.create(MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("text/plain;charset=utf-8"), (String) obj);
        }
        return RequestBody.create(MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("text/plain;charset=utf-8"), "");
    }

    private static final Headers generateOkHttpHeaders(HttpRequest httpRequest) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, List<String>> entry : httpRequest.getHeaders().entrySet()) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry.getKey(), CollectionsKt.joinToString$default(entry.getValue(), ",", null, null, 0, null, null, 62, null));
        }
        return builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    private static final RequestBody generateOkHttpProtobufBody(Object obj) {
        if (obj instanceof byte[]) {
            return RequestBody.create(MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CommonGatewayClient.HEADER_PROTOBUF), (byte[]) obj);
        }
        if (obj instanceof String) {
            return RequestBody.create(MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CommonGatewayClient.HEADER_PROTOBUF), (String) obj);
        }
        return RequestBody.create(MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CommonGatewayClient.HEADER_PROTOBUF), "");
    }

    @NotNull
    public static final Request toOkHttpProtoRequest(@NotNull HttpRequest httpRequest) {
        RequestBody requestBody;
        Request.Builder builder = new Request.Builder();
        Request.Builder Wwwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwww(StringsKt.removeSuffix(StringsKt.trim(httpRequest.getBaseURL(), '/') + '/' + StringsKt.trim(httpRequest.getPath(), '/'), (CharSequence) "/"));
        String obj = httpRequest.getMethod().toString();
        Object body = httpRequest.getBody();
        if (body != null) {
            requestBody = generateOkHttpProtobufBody(body);
        } else {
            requestBody = null;
        }
        return Wwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(obj, requestBody).Wwwwwwwwwwwwwwwwwwwwwwwwwww(generateOkHttpHeaders(httpRequest)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NotNull
    public static final Request toOkHttpRequest(@NotNull HttpRequest httpRequest) {
        RequestBody requestBody;
        Request.Builder builder = new Request.Builder();
        Request.Builder Wwwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwww(StringsKt.removeSuffix(StringsKt.trim(httpRequest.getBaseURL(), '/') + '/' + StringsKt.trim(httpRequest.getPath(), '/'), (CharSequence) "/"));
        String obj = httpRequest.getMethod().toString();
        Object body = httpRequest.getBody();
        if (body != null) {
            requestBody = generateOkHttpBody(body);
        } else {
            requestBody = null;
        }
        return Wwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(obj, requestBody).Wwwwwwwwwwwwwwwwwwwwwwwwwww(generateOkHttpHeaders(httpRequest)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
