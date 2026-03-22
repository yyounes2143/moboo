package com.unity3d.services.core.network.core;

import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.data.model.exception.NetworkTimeoutException;
import com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import java.io.File;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.text.Charsets;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/network/model/HttpResponse;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.network.core.OkHttp3Client$execute$2", f = "OkHttp3Client.kt", i = {}, l = {74}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes6.dex */
public final class OkHttp3Client$execute$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HttpResponse>, Object> {
    final /* synthetic */ HttpRequest $request;
    int label;
    final /* synthetic */ OkHttp3Client this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkHttp3Client$execute$2(OkHttp3Client okHttp3Client, HttpRequest httpRequest, Continuation<? super OkHttp3Client$execute$2> continuation) {
        super(2, continuation);
        this.this$0 = okHttp3Client;
        this.$request = httpRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new OkHttp3Client$execute$2(this.this$0, this.$request, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object makeRequest;
        AlternativeFlowReader alternativeFlowReader;
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    makeRequest = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                OkHttp3Client okHttp3Client = this.this$0;
                HttpRequest httpRequest = this.$request;
                this.label = 1;
                makeRequest = okHttp3Client.makeRequest(httpRequest, httpRequest.getConnectTimeout(), this.$request.getReadTimeout(), this.$request.getWriteTimeout(), this);
                if (makeRequest == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            OkHttp3Client.RequestComplete requestComplete = (OkHttp3Client.RequestComplete) makeRequest;
            Response component1 = requestComplete.component1();
            Object component2 = requestComplete.component2();
            alternativeFlowReader = this.this$0.isAlternativeFlowReader;
            if (!alternativeFlowReader.invoke()) {
                if (component2 instanceof File) {
                    component2 = FilesKt.readText$default((File) component2, null, 1, null);
                } else if (!(component2 instanceof byte[])) {
                    component2 = "";
                } else {
                    component2 = new String((byte[]) component2, Charsets.UTF_8);
                }
            }
            int Kkkkkkkkkkkkkkkkkkkkkk2 = component1.Kkkkkkkkkkkkkkkkkkkkkk();
            Map<String, List<String>> Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = component1.Kkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            String httpUrl = component1.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww().toString();
            if (component2 == null) {
                obj2 = "";
            } else {
                obj2 = component2;
            }
            return new HttpResponse(obj2, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, httpUrl, component1.Kkkkkkkkkk().toString(), OkHttp3Client.NETWORK_CLIENT_OKHTTP, 0L, 64, null);
        } catch (SocketTimeoutException unused) {
            throw new NetworkTimeoutException("Network request timeout", null, null, this.$request.getBaseURL(), null, null, OkHttp3Client.NETWORK_CLIENT_OKHTTP, 54, null);
        } catch (IOException unused2) {
            throw new UnityAdsNetworkException("Network request failed", null, null, this.$request.getBaseURL(), null, null, OkHttp3Client.NETWORK_CLIENT_OKHTTP, 54, null);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super HttpResponse> continuation) {
        return ((OkHttp3Client$execute$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
