package com.changdu.component.pay.base;

import android.app.Activity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.changdu.component.pay.base.model.PayRequestItem;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.component.pay.base.CDPay$pay$1", f = "CDPay.kt", i = {}, l = {TypedValues.CycleType.TYPE_WAVE_PHASE, 456}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDPay$pay$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ IPayCallback $payCallback;
    final /* synthetic */ PayRequestItem $payRequestItem;
    final /* synthetic */ int $payServerCode;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDPay$pay$1(int i, PayRequestItem payRequestItem, IPayCallback iPayCallback, Activity activity, Continuation<? super CDPay$pay$1> continuation) {
        super(2, continuation);
        this.$payServerCode = i;
        this.$payRequestItem = payRequestItem;
        this.$payCallback = iPayCallback;
        this.$activity = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CDPay$pay$1(this.$payServerCode, this.$payRequestItem, this.$payCallback, this.$activity, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0250, code lost:
        if (r1 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0252, code lost:
        r1.pay(r25.$activity, r25.$payRequestItem, r0, r25.$payCallback);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x025d, code lost:
        r0 = r25.$payCallback;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x025f, code lost:
        if (r0 != null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0261, code lost:
        r0.failed(1009, new com.changdu.component.pay.base.model.PayReportMessage(null, "无法找到Google支付模块", null, null, null, null, 61, null));
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x027a, code lost:
        r1 = com.changdu.component.pay.base.CDPay.INSTANCE.getAlipayPayService();
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0280, code lost:
        if (r1 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0282, code lost:
        r1.pay(r25.$activity, r25.$payRequestItem, r0, r25.$payCallback);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x028c, code lost:
        r0 = r25.$payCallback;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x028e, code lost:
        if (r0 != null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0290, code lost:
        r0.failed(1009, new com.changdu.component.pay.base.model.PayReportMessage(null, "无法找到支付宝支付模块", null, null, null, null, 61, null));
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x02f9, code lost:
        return kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0144, code lost:
        if (r0 == r13) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x018b, code lost:
        if (r0.isSuccess() != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x018f, code lost:
        r1 = r25.$payServerCode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0193, code lost:
        if (r1 == 3) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0195, code lost:
        if (r1 == 12) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0199, code lost:
        if (r1 == 14) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x019b, code lost:
        if (r1 == 24) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x019d, code lost:
        if (r1 == 35) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x019f, code lost:
        r0 = r25.$payCallback;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01a1, code lost:
        if (r0 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01a3, code lost:
        r0.failed(1005, new com.changdu.component.pay.base.model.PayReportMessage(null, "无效的支付方式", null, null, null, null, 61, null));
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b9, code lost:
        return kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ba, code lost:
        r1 = com.changdu.component.pay.base.CDPay.INSTANCE.getMiGlobalPayService();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01c0, code lost:
        if (r1 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01c2, code lost:
        r1.pay(r25.$activity, r25.$payRequestItem, r0, r25.$payCallback);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01cd, code lost:
        r0 = r25.$payCallback;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cf, code lost:
        if (r0 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01d1, code lost:
        r0.failed(1009, new com.changdu.component.pay.base.model.PayReportMessage(null, "无法找到小米国际支付模块", null, null, null, null, 61, null));
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01ea, code lost:
        r1 = com.changdu.component.pay.base.CDPay.INSTANCE.getHuaweiPayService();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01f0, code lost:
        if (r1 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01f2, code lost:
        r1.pay(r25.$activity, r25.$payRequestItem, r0, r25.$payCallback);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01fd, code lost:
        r0 = r25.$payCallback;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ff, code lost:
        if (r0 != null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0201, code lost:
        r0.failed(1009, new com.changdu.component.pay.base.model.PayReportMessage(null, "无法找到华为支付模块", null, null, null, null, 61, null));
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x021a, code lost:
        r1 = com.changdu.component.pay.base.CDPay.INSTANCE.getWechatPayService();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0220, code lost:
        if (r1 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0222, code lost:
        r1.pay(r25.$activity, r25.$payRequestItem, r0, r25.$payCallback);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x022d, code lost:
        r0 = r25.$payCallback;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x022f, code lost:
        if (r0 != null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0231, code lost:
        r0.failed(1009, new com.changdu.component.pay.base.model.PayReportMessage(null, "无法找到微信支付模块", null, null, null, null, 61, null));
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x024a, code lost:
        r1 = com.changdu.component.pay.base.CDPay.INSTANCE.getGooglePayService();
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.base.CDPay$pay$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((CDPay$pay$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
