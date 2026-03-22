package com.changdu.mobovideo.utils;

import android.content.Intent;
import android.graphics.Bitmap;
import com.changdu.mobovideo.R;
import com.changdu.mobovideo.VideoApplication;
import com.mbridge.msdk.foundation.entity.CampaignEx;
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
@DebugMetadata(c = "com.changdu.mobovideo.utils.NotificationUtil$notifyLocalActivityPush$1", f = "NotificationUtil.kt", i = {0, 0, 0, 0, 0, 0, 0, 0}, l = {397, 412}, m = "invokeSuspend", n = {"targetIntent", CampaignEx.JSON_KEY_TITLE, "subTitle", "button", "pushStyle", "progress", "bonusStr", "tip"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7"})
@SourceDebugExtension({"SMAP\nNotificationUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationUtil.kt\ncom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,655:1\n24#2:656\n*S KotlinDebug\n*F\n+ 1 NotificationUtil.kt\ncom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1\n*L\n397#1:656\n*E\n"})
/* loaded from: classes3.dex */
public final class NotificationUtil$notifyLocalActivityPush$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $jsonString;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    int label;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.changdu.mobovideo.utils.NotificationUtil$notifyLocalActivityPush$1$1", f = "NotificationUtil.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.changdu.mobovideo.utils.NotificationUtil$notifyLocalActivityPush$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<String> $bonusStr;
        final /* synthetic */ Ref.ObjectRef<String> $button;
        final /* synthetic */ Ref.ObjectRef<Double> $progress;
        final /* synthetic */ Ref.ObjectRef<String> $pushStyle;
        final /* synthetic */ Bitmap $smallImageBitmap;
        final /* synthetic */ Ref.ObjectRef<String> $subTitle;
        final /* synthetic */ Intent $targetIntent;
        final /* synthetic */ Ref.ObjectRef<String> $tip;
        final /* synthetic */ Ref.ObjectRef<String> $title;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Ref.ObjectRef<String> objectRef, Ref.ObjectRef<String> objectRef2, Ref.ObjectRef<String> objectRef3, Ref.ObjectRef<Double> objectRef4, Ref.ObjectRef<String> objectRef5, Ref.ObjectRef<String> objectRef6, Ref.ObjectRef<String> objectRef7, Intent intent, Bitmap bitmap, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$title = objectRef;
            this.$subTitle = objectRef2;
            this.$button = objectRef3;
            this.$progress = objectRef4;
            this.$pushStyle = objectRef5;
            this.$bonusStr = objectRef6;
            this.$tip = objectRef7;
            this.$targetIntent = intent;
            this.$smallImageBitmap = bitmap;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$title, this.$subTitle, this.$button, this.$progress, this.$pushStyle, this.$bonusStr, this.$tip, this.$targetIntent, this.$smallImageBitmap, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                NotificationUtil notificationUtil = NotificationUtil.INSTANCE;
                VideoApplication Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                String str = this.$title.element;
                String str2 = this.$subTitle.element;
                String str3 = this.$button.element;
                Double d = this.$progress.element;
                String str4 = this.$pushStyle.element;
                notificationUtil.Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, R.mipmap.ic_launcher, str, str2, str3, this.$targetIntent, this.$smallImageBitmap, d, this.$bonusStr.element, this.$tip.element, str4);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationUtil$notifyLocalActivityPush$1(String str, Continuation<? super NotificationUtil$notifyLocalActivityPush$1> continuation) {
        super(2, continuation);
        this.$jsonString = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NotificationUtil$notifyLocalActivityPush$1(this.$jsonString, continuation);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(1:(1:(3:5|6|7)(2:9|10))(4:11|12|13|14))(25:35|36|37|38|39|40|(2:100|101)|42|(1:44)|45|(1:47)(1:98)|69|70|(2:95|96)|72|(1:74)|75|(1:77)|78|(1:80)|83|84|(4:86|87|88|89)(1:94)|52|(3:54|26|27)(9:55|56|57|58|59|60|61|(1:63)|29))|15|16|(1:18)(1:30)|19|(1:21)|23|24|25|26|27|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01cc, code lost:
        r1 = r3;
        r3 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0228, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r16, r27) != r2) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015b  */
    /* JADX WARN: Type inference failed for: r1v13, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v19, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v13, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v14, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v15, types: [T, java.lang.Double] */
    /* JADX WARN: Type inference failed for: r4v8, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v7, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r28) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.utils.NotificationUtil$notifyLocalActivityPush$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NotificationUtil$notifyLocalActivityPush$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
