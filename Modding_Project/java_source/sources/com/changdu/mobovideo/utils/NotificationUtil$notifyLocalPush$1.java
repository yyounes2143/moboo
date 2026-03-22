package com.changdu.mobovideo.utils;

import android.content.Intent;
import android.graphics.Bitmap;
import com.changdu.mobovideo.R;
import com.changdu.mobovideo.VideoApplication;
import com.google.firebase.messaging.Constants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.utils.NotificationUtil$notifyLocalPush$1", f = "NotificationUtil.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1}, l = {282, 305, Sdk.SDKError.Reason.SILENT_MODE_MONITOR_ERROR_VALUE}, m = "invokeSuspend", n = {"targetIntent", CampaignEx.JSON_KEY_TITLE, "subTitle", "smallImage2", Constants.ScionAnalytics.PARAM_LABEL, "button", "pushStyle", "targetIntent", CampaignEx.JSON_KEY_TITLE, "subTitle", Constants.ScionAnalytics.PARAM_LABEL, "button", "pushStyle", "smallImageBitmap"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6"})
@SourceDebugExtension({"SMAP\nNotificationUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationUtil.kt\ncom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,655:1\n24#2:656\n24#2:657\n*S KotlinDebug\n*F\n+ 1 NotificationUtil.kt\ncom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1\n*L\n282#1:656\n305#1:657\n*E\n"})
/* loaded from: classes3.dex */
public final class NotificationUtil$notifyLocalPush$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $jsonString;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.changdu.mobovideo.utils.NotificationUtil$notifyLocalPush$1$2", f = "NotificationUtil.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.changdu.mobovideo.utils.NotificationUtil$notifyLocalPush$1$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<String> $button;
        final /* synthetic */ Ref.ObjectRef<String> $label;
        final /* synthetic */ Ref.ObjectRef<String> $pushStyle;
        final /* synthetic */ Bitmap $smallImageBitmap;
        final /* synthetic */ Bitmap $smallImageBitmap2;
        final /* synthetic */ Ref.ObjectRef<String> $subTitle;
        final /* synthetic */ Intent $targetIntent;
        final /* synthetic */ Ref.ObjectRef<String> $title;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Ref.ObjectRef<String> objectRef, Ref.ObjectRef<String> objectRef2, Ref.ObjectRef<String> objectRef3, Ref.ObjectRef<String> objectRef4, Intent intent, Bitmap bitmap, Bitmap bitmap2, Ref.ObjectRef<String> objectRef5, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$title = objectRef;
            this.$subTitle = objectRef2;
            this.$label = objectRef3;
            this.$button = objectRef4;
            this.$targetIntent = intent;
            this.$smallImageBitmap = bitmap;
            this.$smallImageBitmap2 = bitmap2;
            this.$pushStyle = objectRef5;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$title, this.$subTitle, this.$label, this.$button, this.$targetIntent, this.$smallImageBitmap, this.$smallImageBitmap2, this.$pushStyle, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                NotificationUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), R.mipmap.ic_launcher, this.$title.element, this.$subTitle.element, this.$label.element, this.$button.element, this.$targetIntent, this.$smallImageBitmap, this.$smallImageBitmap2, this.$pushStyle.element);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationUtil$notifyLocalPush$1(String str, Continuation<? super NotificationUtil$notifyLocalPush$1> continuation) {
        super(2, continuation);
        this.$jsonString = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NotificationUtil$notifyLocalPush$1(this.$jsonString, continuation);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:1|(1:(1:(1:(3:6|7|8)(2:10|11))(11:12|13|14|15|16|(1:18)(1:30)|19|(1:21)|25|26|27))(4:33|34|35|36))(23:61|62|63|64|65|66|(1:68)|69|(1:71)|72|(1:74)(1:108)|75|76|(1:78)(1:105)|79|80|(1:82)|83|(1:85)|86|(1:88)|90|(3:92|46|(3:55|26|27)(11:50|51|52|(2:54|29)|16|(0)(0)|19|(0)|25|26|27))(6:93|94|95|96|(1:98)|29))|37|38|(1:40)(1:56)|41|(1:43)|45|46|(1:48)|55|26|27|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01b4, code lost:
        r1 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x028c, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r20, r30) != r2) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0231 A[Catch: Exception -> 0x0240, TryCatch #1 {Exception -> 0x0240, blocks: (B:82:0x0229, B:84:0x0231, B:87:0x0243, B:89:0x024f, B:79:0x0208), top: B:104:0x0208 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x024f A[Catch: Exception -> 0x0240, TRY_LEAVE, TryCatch #1 {Exception -> 0x0240, blocks: (B:82:0x0229, B:84:0x0231, B:87:0x0243, B:89:0x024f, B:79:0x0208), top: B:104:0x0208 }] */
    /* JADX WARN: Type inference failed for: r1v11, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v8, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v9, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v7, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v5, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r31) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.utils.NotificationUtil$notifyLocalPush$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NotificationUtil$notifyLocalPush$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
