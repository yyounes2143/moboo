package com.changdu.component.webviewcache;

import java.util.HashMap;
import java.util.Map;
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
/* renamed from: com.changdu.component.webviewcache.b  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0255b extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5386a;
    public final /* synthetic */ CDJsInterfaceParamsData b;
    public final /* synthetic */ CDJsInterface c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0255b(CDJsInterfaceParamsData cDJsInterfaceParamsData, CDJsInterface cDJsInterface, Continuation continuation) {
        super(2, continuation);
        this.b = cDJsInterfaceParamsData;
        this.c = cDJsInterface;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0255b(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new C0255b(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Map hashMap;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5386a;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                JSONObject paramsJson = this.b.getParamsJson();
                String optString = paramsJson.optString("eventName", "");
                if (optString != null && !StringsKt.isBlank(optString)) {
                    JSONObject optJSONObject = paramsJson.optJSONObject("eventParams");
                    if (optJSONObject == null) {
                        optJSONObject = new JSONObject();
                    }
                    try {
                        hashMap = com.changdu.component.webviewcache.util.b.a(optJSONObject);
                    } catch (Exception unused) {
                        hashMap = new HashMap();
                    }
                    MainCoroutineDispatcher main = Dispatchers.getMain();
                    C0254a c0254a = new C0254a(this.c, optString, hashMap, null);
                    this.f5386a = 1;
                    if (BuildersKt.withContext(main, c0254a, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
        } catch (Exception unused2) {
        }
        return Unit.INSTANCE;
    }
}
