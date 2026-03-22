package com.changdu.mobovideo.picture;

import android.os.Bundle;
import com.changdu.mobovideo.googleengage.UserRequestCache;
import com.changdu.mobovideo.net.VideoHttpClient;
import com.changdu.mobovideo.utils.ALocalCache;
import com.changdu.mobovideo.utils.AppBizDataManager;
import com.changdu.mobovideo.utils.GsonUtil;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.Closeable;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.picture.PushAdapter$uploadFirebaseIntentData$1", f = "PushAdapter.kt", i = {}, l = {117}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class PushAdapter$uploadFirebaseIntentData$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Bundle $data;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushAdapter$uploadFirebaseIntentData$1(Bundle bundle, Continuation<? super PushAdapter$uploadFirebaseIntentData$1> continuation) {
        super(2, continuation);
        this.$data = bundle;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PushAdapter$uploadFirebaseIntentData$1(this.$data, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Map Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String str;
        String str2;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
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
            GsonUtil gsonUtil = GsonUtil.INSTANCE;
            PushAdapter pushAdapter = PushAdapter.INSTANCE;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.$data);
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = gsonUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                return Unit.INSTANCE;
            }
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = gsonUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MapsKt.hashMapOf(TuplesKt.to("custom", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), TuplesKt.to(CampaignEx.JSON_KEY_TIMESTAMP, Boxing.boxLong(System.currentTimeMillis()))));
            if (StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
                return Unit.INSTANCE;
            }
            ALocalCache Wwwwwwwwwwwwwwwwwwwwww2 = AppBizDataManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
                str = Wwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("userRequestCache");
            } else {
                str = null;
            }
            if (str != null) {
                UserRequestCache userRequestCache = (UserRequestCache) gsonUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, UserRequestCache.class);
                if (userRequestCache != null) {
                    str2 = userRequestCache.getBaseHost();
                } else {
                    str2 = null;
                }
                if (str2 != null && !StringsKt.isBlank(str2)) {
                    VideoHttpClient videoHttpClient = VideoHttpClient.INSTANCE;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to("Content-Type", "application/json"));
                    this.label = 1;
                    obj = videoHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, hashMapOf, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, userRequestCache, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
            return Unit.INSTANCE;
        }
        Closeable closeable = (Closeable) obj;
        Response response = (Response) closeable;
        if (response != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.string();
        }
        if (response != null) {
            response.Kkkkkkkkkkkkkkk();
        }
        Unit unit = Unit.INSTANCE;
        CloseableKt.closeFinally(closeable, null);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PushAdapter$uploadFirebaseIntentData$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
