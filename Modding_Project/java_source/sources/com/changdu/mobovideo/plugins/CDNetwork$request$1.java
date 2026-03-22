package com.changdu.mobovideo.plugins;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.changdu.mobovideo.net.VideoHttpClient;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.IOException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.plugins.CDNetwork$request$1", f = "CDNetwork.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDNetwork$request$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MethodCall $call;
    final /* synthetic */ MethodChannel.Result $result;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDNetwork$request$1(MethodCall methodCall, MethodChannel.Result result, Continuation<? super CDNetwork$request$1> continuation) {
        super(2, continuation);
        this.$call = methodCall;
        this.$result = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDNetwork$request$1(this.$call, this.$result, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                String str = (String) this.$call.argument(FirebaseAnalytics.Param.METHOD);
                String str2 = (String) this.$call.argument("url");
                Map<String, String> map = (Map) this.$call.argument("headers");
                if (map == null) {
                    map = MapsKt.emptyMap();
                }
                Map<String, String> map2 = map;
                String str3 = (String) this.$call.argument("args");
                if (str3 == null) {
                    str3 = JsonUtils.EMPTY_JSON;
                }
                String str4 = str3;
                VideoHttpClient videoHttpClient = VideoHttpClient.INSTANCE;
                final MethodChannel.Result result = this.$result;
                videoHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwww(str, str2, map2, str4, new Callback() { // from class: com.changdu.mobovideo.plugins.CDNetwork$request$1.1
                    @Override // okhttp3.Callback
                    public void onFailure(Call call, IOException iOException) {
                        MethodChannel.Result.this.error(iOException.toString(), "", "");
                    }

                    @Override // okhttp3.Callback
                    public void onResponse(Call call, Response response) {
                        byte[] bArr;
                        Pair pair = TuplesKt.to("code", Integer.valueOf(response.Kkkkkkkkkkkkkkkkkkkkkk()));
                        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            bArr = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.bytes();
                        } else {
                            bArr = null;
                        }
                        MethodChannel.Result.this.success(MapsKt.mapOf(pair, TuplesKt.to("body", bArr), TuplesKt.to("header", MapsKt.toMap(response.Kkkkkkkkkkkkkkkk()))));
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
                this.$result.error(e.toString(), "", "");
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDNetwork$request$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
