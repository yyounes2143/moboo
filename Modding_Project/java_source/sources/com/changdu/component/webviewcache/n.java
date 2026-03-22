package com.changdu.component.webviewcache;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class n extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5426a;
    public final /* synthetic */ CDJsInterfaceParamsData b;
    public final /* synthetic */ CDWebViewJsBridgeListener c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(CDJsInterfaceParamsData cDJsInterfaceParamsData, CDWebViewJsBridgeListener cDWebViewJsBridgeListener, Continuation continuation) {
        super(2, continuation);
        this.b = cDJsInterfaceParamsData;
        this.c = cDWebViewJsBridgeListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new n(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new n(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5426a;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            JSONObject paramsJson = this.b.getParamsJson();
            String optString = paramsJson.optString("bookId");
            int optInt = paramsJson.optInt("chapterIndex", -1);
            int optInt2 = paramsJson.optInt("pageIndex", 0);
            if (optString != null && !StringsKt.isBlank(optString)) {
                MainCoroutineDispatcher main = Dispatchers.getMain();
                m mVar = new m(this.c, paramsJson, optString, optInt, optInt2, null);
                this.f5426a = 1;
                if (BuildersKt.withContext(main, mVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                return Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }
}
