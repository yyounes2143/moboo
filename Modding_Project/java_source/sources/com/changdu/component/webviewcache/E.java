package com.changdu.component.webviewcache;

import com.changdu.component.router.CDRouter;
import com.changdu.component.router.biz.ISensorsDataModuleService;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class E extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CDJsInterfaceParamsData f5383a;
    public final /* synthetic */ CDJsInterface b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E(CDJsInterfaceParamsData cDJsInterfaceParamsData, CDJsInterface cDJsInterface, Continuation continuation) {
        super(2, continuation);
        this.f5383a = cDJsInterfaceParamsData;
        this.b = cDJsInterface;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new E(this.f5383a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new E(this.f5383a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        JSONObject paramsJson;
        String optString;
        CDWebView cDWebView;
        CDWebViewJsBridgeListener cdJsBridgeListener;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            paramsJson = this.f5383a.getParamsJson();
            optString = paramsJson.optString("eventName", "");
        } catch (Exception unused) {
        }
        if (optString != null && !StringsKt.isBlank(optString)) {
            JSONObject optJSONObject = paramsJson.optJSONObject("eventParams");
            if (optJSONObject == null) {
                optJSONObject = new JSONObject();
            }
            cDWebView = this.b.f5379a;
            if (cDWebView != null && (cdJsBridgeListener = cDWebView.getCdJsBridgeListener()) != null && cdJsBridgeListener.sensorsDataReport(optString, optJSONObject)) {
                return Unit.INSTANCE;
            }
            optJSONObject.put("beH5", true);
            ISensorsDataModuleService sensorsDataService = CDRouter.INSTANCE.getSensorsDataService();
            if (sensorsDataService != null) {
                sensorsDataService.reportEvent(optString, optJSONObject);
            }
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
