package com.changdu.component.webviewcache;

import android.content.res.Resources;
import android.os.Build;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.changdu.component.core.CDComponent;
import com.google.ads.mediation.vungle.VungleConstants;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.HashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class A extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5376a;
    public final /* synthetic */ CDJsInterfaceParamsData b;
    public final /* synthetic */ CDJsInterface c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(CDJsInterfaceParamsData cDJsInterfaceParamsData, CDJsInterface cDJsInterface, Continuation continuation) {
        super(2, continuation);
        this.b = cDJsInterfaceParamsData;
        this.c = cDJsInterface;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new A(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new A(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        Object responseToWebView;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f5376a;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                CDComponent cDComponent = CDComponent.getInstance();
                HashMap hashMap = new HashMap();
                hashMap.put(CmcdConfiguration.KEY_SESSION_ID, cDComponent.getSid());
                hashMap.put(VungleConstants.KEY_USER_ID, cDComponent.getUserId());
                hashMap.put("chl", cDComponent.getChannel());
                hashMap.put("mt", cDComponent.getMt());
                hashMap.put("pt", "");
                hashMap.put("ver", Boxing.boxInt(cDComponent.getServerProtocolVersion()));
                hashMap.put("uniqueAppId", cDComponent.getAppId());
                hashMap.put("langId", Boxing.boxInt(cDComponent.getLangId()));
                hashMap.put("x", cDComponent.getProductX());
                hashMap.put("coreVer", cDComponent.getCoreVersion());
                hashMap.put("appVer", cDComponent.getAppVersion());
                hashMap.put("sysVer", Build.VERSION.RELEASE);
                hashMap.put("device", Build.MODEL);
                hashMap.put("sw", Boxing.boxInt(cDComponent.getScreenWidth()));
                hashMap.put(com.mbridge.msdk.foundation.entity.b.JSON_KEY_SH, Boxing.boxInt(cDComponent.getScreenHeight()));
                hashMap.put("androidId", cDComponent.getAndroidId());
                hashMap.put("gaid", cDComponent.getGoogleAdId());
                hashMap.put("imei", "");
                hashMap.put(TPDownloadProxyEnum.USER_GUID, cDComponent.getGuid());
                hashMap.put("xguid", "");
                Resources resources = cDComponent.getContext().getResources();
                hashMap.put("notchScreen", Boxing.boxInt(resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"))));
                Resources resources2 = cDComponent.getContext().getResources();
                int identifier = resources2.getIdentifier("navigation_bar_height", "dimen", "android");
                if (identifier != 0) {
                    i = resources2.getDimensionPixelSize(identifier);
                } else {
                    i = 0;
                }
                hashMap.put("naviBarHeight", Boxing.boxInt(i));
                this.b.setRespData(hashMap);
                CDJsInterface cDJsInterface = this.c;
                CDJsInterfaceParamsData cDJsInterfaceParamsData = this.b;
                this.f5376a = 1;
                responseToWebView = cDJsInterface.responseToWebView(cDJsInterfaceParamsData, this);
                if (responseToWebView == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }
}
