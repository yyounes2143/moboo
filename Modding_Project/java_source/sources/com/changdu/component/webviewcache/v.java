package com.changdu.component.webviewcache;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class v extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5436a;
    public final /* synthetic */ CDJsInterfaceParamsData b;
    public final /* synthetic */ CDWebViewJsBridgeListener c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(CDJsInterfaceParamsData cDJsInterfaceParamsData, CDWebViewJsBridgeListener cDWebViewJsBridgeListener, Continuation continuation) {
        super(2, continuation);
        this.b = cDJsInterfaceParamsData;
        this.c = cDWebViewJsBridgeListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new v(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new v(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5436a;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            JSONObject paramsJson = this.b.getParamsJson();
            String optString = paramsJson.optString("itemId");
            String optString2 = paramsJson.optString("shopItemId");
            String optString3 = paramsJson.optString("money", "0");
            paramsJson.optString("lastBuyItemId");
            paramsJson.optString("lastBuyToken");
            paramsJson.optInt("vipUpgradeMode", 0);
            String optString4 = paramsJson.optString("hwItemId");
            String optString5 = paramsJson.optString("couponId");
            String optString6 = paramsJson.optString("paySource");
            String optString7 = paramsJson.optString("customData");
            MainCoroutineDispatcher main = Dispatchers.getMain();
            u uVar = new u(this.c, paramsJson, optString, optString2, optString3, optString4, optString5, optString6, optString7, null);
            this.f5436a = 1;
            if (BuildersKt.withContext(main, uVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
