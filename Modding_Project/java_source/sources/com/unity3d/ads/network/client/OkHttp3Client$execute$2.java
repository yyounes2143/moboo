package com.unity3d.ads.network.client;

import com.unity3d.ads.network.mapper.HttpRequestToOkHttpRequestKt;
import com.unity3d.ads.network.model.HttpRequest;
import com.unity3d.ads.network.model.HttpResponse;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/network/model/HttpResponse;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.network.client.OkHttp3Client$execute$2", f = "OkHttp3Client.kt", i = {}, l = {35}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes6.dex */
public final class OkHttp3Client$execute$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HttpResponse>, Object> {
    final /* synthetic */ HttpRequest $request;
    int label;
    final /* synthetic */ OkHttp3Client this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkHttp3Client$execute$2(HttpRequest httpRequest, OkHttp3Client okHttp3Client, Continuation<? super OkHttp3Client$execute$2> continuation) {
        super(2, continuation);
        this.$request = httpRequest;
        this.this$0 = okHttp3Client;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new OkHttp3Client$execute$2(this.$request, this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            Request okHttpRequest = HttpRequestToOkHttpRequestKt.toOkHttpRequest(this.$request);
            this.label = 1;
            obj = this.this$0.makeRequest(okHttpRequest, this.$request.getConnectTimeout(), this.$request.getReadTimeout(), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        Response response = (Response) obj;
        int Kkkkkkkkkkkkkkkkkkkkkk2 = response.Kkkkkkkkkkkkkkkkkkkkkk();
        Map<String, List<String>> Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Kkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        String httpUrl = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww().toString();
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.string();
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        return new HttpResponse(str, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, httpUrl);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super HttpResponse> continuation) {
        return ((OkHttp3Client$execute$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
