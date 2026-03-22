package com.unity3d.ads.core.domain;

import androidx.media3.extractor.ts.TsExtractor;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalID;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse", f = "AndroidHandleGatewayAdResponse.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5}, l = {97, 114, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT, TsExtractor.TS_PACKET_SIZE, 192, 218}, m = "invoke", n = {"this", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", "response", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "adType", "adPlayer", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "this", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", "response", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "adPlayer", "webviewConfiguration", "tmpAdObject", "this", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", "response", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "adPlayer", "tmpAdObject", "webViewUrl", "base64ImpressionConfiguration", "mark$iv$iv", "this", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", "response", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "adPlayer", "adObject", "loadAdViewerStartedTime", "this", "opportunityId", "response", "adPlayer", "adObject", "loadEvent", "t"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "Z$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0"})
/* loaded from: classes6.dex */
public final class AndroidHandleGatewayAdResponse$invoke$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleGatewayAdResponse$invoke$1(AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, Continuation<? super AndroidHandleGatewayAdResponse$invoke$1> continuation) {
        super(continuation);
        this.this$0 = androidHandleGatewayAdResponse;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, null, null, null, null, null, false, this);
    }
}
