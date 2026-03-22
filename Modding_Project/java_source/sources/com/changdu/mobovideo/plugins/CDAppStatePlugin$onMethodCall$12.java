package com.changdu.mobovideo.plugins;

import android.content.Context;
import com.changdu.mobovideo.picture.CDJobScheduler;
import com.changdu.mobovideo.picture.PushAdapter;
import com.changdu.mobovideo.picture.TokenSyncStore;
import com.changdu.mobovideo.utils.ALocalCache;
import com.changdu.mobovideo.utils.AppBizDataManager;
import com.changdu.mobovideo.utils.SaltCrypto;
import io.flutter.plugin.common.MethodCall;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$12", f = "CDAppStatePlugin.kt", i = {}, l = {342}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDAppStatePlugin$onMethodCall$12 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MethodCall $call;
    int label;
    final /* synthetic */ CDAppStatePlugin this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDAppStatePlugin$onMethodCall$12(MethodCall methodCall, CDAppStatePlugin cDAppStatePlugin, Continuation<? super CDAppStatePlugin$onMethodCall$12> continuation) {
        super(2, continuation);
        this.$call = methodCall;
        this.this$0 = cDAppStatePlugin;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDAppStatePlugin$onMethodCall$12(this.$call, this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Context context;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                AppBizDataManager appBizDataManager = AppBizDataManager.INSTANCE;
                ALocalCache Wwwwwwwwwwwwwwwwwwwwwwww2 = appBizDataManager.Wwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    Boxing.boxBoolean(Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("userRequestCache"));
                }
                Object obj2 = this.$call.arguments;
                Context context2 = null;
                if (obj2 instanceof String) {
                    str = (String) obj2;
                } else {
                    str = null;
                }
                if (str != null && !StringsKt.isBlank(str)) {
                    JSONObject jSONObject = new JSONObject(str);
                    String optString = jSONObject.optString("salt");
                    if (!StringsKt.isBlank(optString)) {
                        jSONObject.put("salt", SaltCrypto.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(optString));
                    }
                    ALocalCache Wwwwwwwwwwwwwwwwwwwwww2 = appBizDataManager.Wwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
                        Wwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("userRequestCache", jSONObject.toString());
                    }
                    TokenSyncStore tokenSyncStore = TokenSyncStore.INSTANCE;
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = tokenSyncStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                        CDJobScheduler cDJobScheduler = CDJobScheduler.INSTANCE;
                        context = this.this$0.f5595Wwwwwwwwwwwwwwwwwwwwwwww;
                        if (context != null) {
                            context2 = context;
                        }
                        cDJobScheduler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, "user_request_cache_updated");
                    }
                    if (tokenSyncStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        PushAdapter pushAdapter = PushAdapter.INSTANCE;
                        this.label = 1;
                        if (pushAdapter.Wwwwwwwwwwwwwwwwwwwwwwwww("saveUserRequestCache", this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                return Unit.INSTANCE;
            }
        } catch (Throwable unused) {
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDAppStatePlugin$onMethodCall$12) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
