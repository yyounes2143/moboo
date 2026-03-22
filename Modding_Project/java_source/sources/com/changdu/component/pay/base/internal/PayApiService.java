package com.changdu.component.pay.base.internal;

import com.changdu.component.http.CDHttpRetryInterceptor;
import com.changdu.component.httpbiz.CDResponseAnnotation;
import com.changdu.component.pay.base.model.PayHttpRespData;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Url;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u0007J.\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\u0004\u001a\u00020\u00032\u0014\b\u0001\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000bH§@¢\u0006\u0002\u0010\fJ\u0018\u0010\r\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/changdu/component/pay/base/internal/PayApiService;", "", "callbackPurchaseHistory", "", "url", "requestBody", "Lokhttp3/RequestBody;", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createOrder", "Lcom/changdu/component/pay/base/model/PayHttpRespData;", "formFieldMap", "", "(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAsString", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface PayApiService {
    @Nullable
    @CDHttpRetryInterceptor.NeedRetry
    @CDResponseAnnotation
    @POST
    Object callbackPurchaseHistory(@Url @NotNull String str, @Body @NotNull RequestBody requestBody, @NotNull Continuation<? super String> continuation);

    @Nullable
    @CDResponseAnnotation(responseObjectToString = true)
    @FormUrlEncoded
    @POST
    Object createOrder(@Url @NotNull String str, @FieldMap @NotNull Map<String, String> map, @NotNull Continuation<? super PayHttpRespData> continuation);

    @CDHttpRetryInterceptor.NeedRetry
    @GET
    @Nullable
    Object getAsString(@Url @NotNull String str, @NotNull Continuation<? super String> continuation);
}
