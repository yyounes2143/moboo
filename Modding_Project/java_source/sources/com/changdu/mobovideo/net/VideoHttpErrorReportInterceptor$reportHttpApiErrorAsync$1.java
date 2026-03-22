package com.changdu.mobovideo.net;

import com.changdu.component.router.biz.ISensorsDataModuleService;
import com.changdu.mobovideo.utils.DebugUtil;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.net.VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1", f = "VideoHttpErrorReportInterceptor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Exception $exception;
    final /* synthetic */ Request $request;
    final /* synthetic */ Response $response;
    int label;
    final /* synthetic */ VideoHttpErrorReportInterceptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1(Exception exc, VideoHttpErrorReportInterceptor videoHttpErrorReportInterceptor, Request request, Response response, Continuation<? super VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1> continuation) {
        super(2, continuation);
        this.$exception = exc;
        this.this$0 = videoHttpErrorReportInterceptor;
        this.$request = request;
        this.$response = response;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1(this.$exception, this.this$0, this.$request, this.$response, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                Exception exc = this.$exception;
                if (exc != null) {
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DebugUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc);
                    if (!StringsKt.contains$default((CharSequence) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, (CharSequence) "java.io.IOException: Canceled", false, 2, (Object) null)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("bizType", ISensorsDataModuleService.APP_CLIENT_BIZ_TYPE_NETWORK_ERROR);
                        jSONObject.put("bizMsg", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = this.this$0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.$request);
                        jSONObject.put("bizContent", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
                        jSONObject.put("bizReferer", "");
                        jSONObject.put("bizInPageOperation", "");
                        jSONObject.put(ISensorsDataModuleService.APP_CLIENT_BIZ_PARAM_URL, String.valueOf(this.$request.Wwwwwwwwwwwwwwwwwwwwwwww()));
                        SensorsDataAPI.sharedInstance().track("CdAppClientBiz", jSONObject);
                    }
                } else {
                    Response response = this.$response;
                    if (response == null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("bizType", ISensorsDataModuleService.APP_CLIENT_BIZ_TYPE_NETWORK_ERROR);
                        jSONObject2.put("bizMsg", "接口请求响应为空");
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.this$0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.$request);
                        jSONObject2.put("bizContent", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                        jSONObject2.put("bizReferer", "");
                        jSONObject2.put("bizInPageOperation", "");
                        jSONObject2.put(ISensorsDataModuleService.APP_CLIENT_BIZ_PARAM_URL, String.valueOf(this.$request.Wwwwwwwwwwwwwwwwwwwwwwww()));
                        SensorsDataAPI.sharedInstance().track("CdAppClientBiz", jSONObject2);
                    } else if (response.Kkkkkkkkkkkkkkkkkkkkkk() >= 400) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("bizType", ISensorsDataModuleService.APP_CLIENT_BIZ_TYPE_NETWORK_ERROR);
                        jSONObject3.put("bizMsg", "接口请求失败");
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.this$0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.$request);
                        jSONObject3.put("bizContent", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        jSONObject3.put("bizReferer", "");
                        jSONObject3.put("bizInPageOperation", "");
                        jSONObject3.put(ISensorsDataModuleService.APP_CLIENT_BIZ_PARAM_URL, String.valueOf(this.$request.Wwwwwwwwwwwwwwwwwwwwwwww()));
                        jSONObject3.put(ISensorsDataModuleService.APP_CLIENT_BIZ_PARAM_ERROR_CODE, String.valueOf(this.$response.Kkkkkkkkkkkkkkkkkkkkkk()));
                        SensorsDataAPI.sharedInstance().track("CdAppClientBiz", jSONObject3);
                    }
                }
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
