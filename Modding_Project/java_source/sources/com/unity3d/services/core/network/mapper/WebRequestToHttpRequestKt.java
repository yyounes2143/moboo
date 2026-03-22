package com.unity3d.services.core.network.mapper;

import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.RequestType;
import com.unity3d.services.core.request.WebRequest;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toHttpRequest", "Lcom/unity3d/services/core/network/model/HttpRequest;", "Lcom/unity3d/services/core/request/WebRequest;", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class WebRequestToHttpRequestKt {
    @NotNull
    public static final HttpRequest toHttpRequest(@NotNull WebRequest webRequest) {
        return new HttpRequest(webRequest.getUrl().toString(), null, RequestType.valueOf(webRequest.getRequestType()), webRequest.getBody(), webRequest.getHeaders(), null, null, null, null, 0, 0, 0, 0, false, null, null, 0, 131042, null);
    }
}
