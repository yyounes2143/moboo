package com.changdu.component.pay.base;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.component.pay.base.CDPay$decodePayConfig$2", f = "CDPay.kt", i = {}, l = {871}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDPay$decodePayConfig$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $rawStr;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDPay$decodePayConfig$2(String str, Continuation<? super CDPay$decodePayConfig$2> continuation) {
        super(2, continuation);
        this.$rawStr = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CDPay$decodePayConfig$2(this.$rawStr, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a2 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 != r3) goto L13
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Exception -> L10
            return r6
        L10:
            r6 = move-exception
            goto Lad
        L13:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1b:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.String r6 = r5.$rawStr
            if (r6 == 0) goto Lb5
            int r6 = r6.length()
            if (r6 != 0) goto L2a
            goto Lb5
        L2a:
            java.lang.String r6 = r5.$rawStr     // Catch: java.lang.Exception -> L10
            kotlin.text.Regex r1 = new kotlin.text.Regex     // Catch: java.lang.Exception -> L10
            java.lang.String r4 = "\\|"
            r1.<init>(r4)     // Catch: java.lang.Exception -> L10
            java.util.List r6 = r1.split(r6, r2)     // Catch: java.lang.Exception -> L10
            if (r6 == 0) goto La8
            boolean r1 = r6.isEmpty()     // Catch: java.lang.Exception -> L10
            if (r1 == 0) goto L40
            goto La8
        L40:
            int r1 = r6.size()     // Catch: java.lang.Exception -> L10
            r4 = 4
            if (r1 != r4) goto La8
            java.lang.Object r1 = r6.get(r2)     // Catch: java.lang.Exception -> L10
            java.lang.String r4 = "1"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r4)     // Catch: java.lang.Exception -> L10
            if (r1 != 0) goto L54
            goto La8
        L54:
            r1 = 2
            java.lang.Object r6 = r6.get(r1)     // Catch: java.lang.Exception -> L10
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L10
            if (r6 == 0) goto L6d
            int r1 = r6.length()     // Catch: java.lang.Exception -> L10
            if (r1 != 0) goto L64
            goto L6d
        L64:
            com.changdu.component.pay.base.CDPay.access$setMCachedBase64PayConfigContent$p(r6)     // Catch: java.lang.Exception -> L10
            com.changdu.component.pay.base.CDPay r1 = com.changdu.component.pay.base.CDPay.INSTANCE     // Catch: java.lang.Exception -> L10
            com.changdu.component.pay.base.CDPay.access$saveCachedPayConfigContent(r1, r6)     // Catch: java.lang.Exception -> L10
            goto L93
        L6d:
            java.lang.String r6 = com.changdu.component.pay.base.CDPay.access$getMCachedBase64PayConfigContent$p()     // Catch: java.lang.Exception -> L10
            if (r6 == 0) goto L79
            int r6 = r6.length()     // Catch: java.lang.Exception -> L10
            if (r6 != 0) goto L82
        L79:
            com.changdu.component.pay.base.CDPay r6 = com.changdu.component.pay.base.CDPay.INSTANCE     // Catch: java.lang.Exception -> L10
            java.lang.String r6 = com.changdu.component.pay.base.CDPay.access$getCachedPayConfigContent(r6)     // Catch: java.lang.Exception -> L10
            com.changdu.component.pay.base.CDPay.access$setMCachedBase64PayConfigContent$p(r6)     // Catch: java.lang.Exception -> L10
        L82:
            java.lang.String r6 = com.changdu.component.pay.base.CDPay.access$getMCachedBase64PayConfigContent$p()     // Catch: java.lang.Exception -> L10
            if (r6 == 0) goto La3
            int r6 = r6.length()     // Catch: java.lang.Exception -> L10
            if (r6 != 0) goto L8f
            goto La3
        L8f:
            java.lang.String r6 = com.changdu.component.pay.base.CDPay.access$getMCachedBase64PayConfigContent$p()     // Catch: java.lang.Exception -> L10
        L93:
            java.lang.String r6 = com.changdu.component.pay.base.internal.a.a(r6)     // Catch: java.lang.Exception -> L10
            com.changdu.component.pay.base.CDPay r1 = com.changdu.component.pay.base.CDPay.INSTANCE     // Catch: java.lang.Exception -> L10
            r5.label = r3     // Catch: java.lang.Exception -> L10
            java.lang.Object r6 = com.changdu.component.pay.base.CDPay.access$parsePayConfigXml(r1, r6, r5)     // Catch: java.lang.Exception -> L10
            if (r6 != r0) goto La2
            return r0
        La2:
            return r6
        La3:
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Exception -> L10
            return r6
        La8:
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)     // Catch: java.lang.Exception -> L10
            return r6
        Lad:
            r6.printStackTrace()
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            return r6
        Lb5:
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.base.CDPay$decodePayConfig$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Boolean> continuation) {
        return ((CDPay$decodePayConfig$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
