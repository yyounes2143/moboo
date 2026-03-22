package com.unity3d.ads.adplayer;

import com.tencent.thumbplayer.tcmedia.core.common.TPCodecParamers;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1", f = "AndroidFullscreenWebViewAdPlayer.kt", i = {}, l = {190, 191, 192, 193, TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT, 196}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes6.dex */
public final class AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ DisplayMessage $displayMessage;
    int label;
    final /* synthetic */ AndroidFullscreenWebViewAdPlayer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1(AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer, DisplayMessage displayMessage, Continuation<? super AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1> continuation) {
        super(2, continuation);
        this.this$0 = androidFullscreenWebViewAdPlayer;
        this.$displayMessage = displayMessage;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1(this.this$0, this.$displayMessage, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0067, code lost:
        if (r11.requestShow(r1, r10) == r0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0091, code lost:
        if (r11.emit(r1, r10) == r0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ad, code lost:
        if (r11.sendVisibilityChange(r1, r10) == r0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c9, code lost:
        if (r11.sendFocusChange(r1, r10) == r0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00dd, code lost:
        if (r11.sendActivityDestroyed(r10) == r0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ed, code lost:
        if (r11.destroy(r10) == r0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ef, code lost:
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
