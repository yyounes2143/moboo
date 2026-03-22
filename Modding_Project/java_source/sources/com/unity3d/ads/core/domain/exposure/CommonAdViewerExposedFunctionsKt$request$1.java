package com.unity3d.ads.core.domain.exposure;

import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.core.domain.ExecuteAdViewerRequest;
import com.unity3d.services.core.network.model.RequestType;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "args", "", "invoke", "([Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class CommonAdViewerExposedFunctionsKt$request$1 implements ExposedFunction {
    final /* synthetic */ ExecuteAdViewerRequest $executeAdViewerRequest;
    final /* synthetic */ RequestType $type;

    public CommonAdViewerExposedFunctionsKt$request$1(ExecuteAdViewerRequest executeAdViewerRequest, RequestType requestType) {
        this.$executeAdViewerRequest = executeAdViewerRequest;
        this.$type = requestType;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
        return invoke2(objArr, (Continuation<Object>) continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069 A[Catch: Exception -> 0x0031, TryCatch #1 {Exception -> 0x0031, blocks: (B:12:0x002d, B:23:0x005f, B:25:0x0069, B:30:0x007c, B:26:0x006c, B:28:0x0070), top: B:41:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c A[Catch: Exception -> 0x0031, TryCatch #1 {Exception -> 0x0031, blocks: (B:12:0x002d, B:23:0x005f, B:25:0x0069, B:30:0x007c, B:26:0x006c, B:28:0x0070), top: B:41:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b7  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke2(@org.jetbrains.annotations.NotNull java.lang.Object[] r9, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<java.lang.Object> r10) {
        /*
            r8 = this;
            r0 = 1
            boolean r1 = r10 instanceof com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1
            if (r1 == 0) goto L14
            r1 = r10
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1 r1 = (com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L14
            int r2 = r2 - r3
            r1.label = r2
            goto L19
        L14:
            com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1 r1 = new com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1$invoke$1
            r1.<init>(r8, r10)
        L19:
            java.lang.Object r10 = r1.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.label
            if (r3 == 0) goto L3c
            if (r3 != r0) goto L34
            java.lang.Object r9 = r1.L$1
            java.lang.String r9 = (java.lang.String) r9
            java.lang.Object r1 = r1.L$0
            java.lang.String r1 = (java.lang.String) r1
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L31
            goto L5f
        L31:
            r10 = move-exception
            goto Laf
        L34:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3c:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = kotlin.collections.ArraysKt.first(r9)
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r3 = kotlin.collections.ArraysKt.getOrNull(r9, r0)
            java.lang.String r3 = (java.lang.String) r3
            com.unity3d.ads.core.domain.ExecuteAdViewerRequest r4 = r8.$executeAdViewerRequest     // Catch: java.lang.Exception -> Lab
            com.unity3d.services.core.network.model.RequestType r5 = r8.$type     // Catch: java.lang.Exception -> Lab
            r1.L$0 = r10     // Catch: java.lang.Exception -> Lab
            r1.L$1 = r3     // Catch: java.lang.Exception -> Lab
            r1.label = r0     // Catch: java.lang.Exception -> Lab
            java.lang.Object r9 = r4.invoke(r5, r9, r1)     // Catch: java.lang.Exception -> Lab
            if (r9 != r2) goto L5c
            return r2
        L5c:
            r1 = r10
            r10 = r9
            r9 = r3
        L5f:
            com.unity3d.services.core.network.model.HttpResponse r10 = (com.unity3d.services.core.network.model.HttpResponse) r10     // Catch: java.lang.Exception -> L31
            java.lang.Object r2 = r10.getBody()     // Catch: java.lang.Exception -> L31
            boolean r3 = r2 instanceof java.lang.String     // Catch: java.lang.Exception -> L31
            if (r3 == 0) goto L6c
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Exception -> L31
            goto L7c
        L6c:
            boolean r3 = r2 instanceof byte[]     // Catch: java.lang.Exception -> L31
            if (r3 == 0) goto L7b
            java.lang.String r3 = new java.lang.String     // Catch: java.lang.Exception -> L31
            byte[] r2 = (byte[]) r2     // Catch: java.lang.Exception -> L31
            java.nio.charset.Charset r4 = kotlin.text.Charsets.UTF_8     // Catch: java.lang.Exception -> L31
            r3.<init>(r2, r4)     // Catch: java.lang.Exception -> L31
            r2 = r3
            goto L7c
        L7b:
            r2 = 0
        L7c:
            com.unity3d.ads.adplayer.model.OnWebRequestComplete r3 = new com.unity3d.ads.adplayer.model.OnWebRequestComplete     // Catch: java.lang.Exception -> L31
            java.lang.String r4 = r10.getUrlString()     // Catch: java.lang.Exception -> L31
            int r5 = r10.getStatusCode()     // Catch: java.lang.Exception -> L31
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)     // Catch: java.lang.Exception -> L31
            java.util.Map r10 = r10.getHeaders()     // Catch: java.lang.Exception -> L31
            org.json.JSONArray r10 = com.unity3d.services.core.network.mapper.HttpResponseHeaderToJSONArrayKt.toResponseHeadersMap(r10)     // Catch: java.lang.Exception -> L31
            r6 = 5
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Exception -> L31
            r7 = 0
            r6[r7] = r1     // Catch: java.lang.Exception -> L31
            r6[r0] = r4     // Catch: java.lang.Exception -> L31
            r0 = 2
            r6[r0] = r2     // Catch: java.lang.Exception -> L31
            r0 = 3
            r6[r0] = r5     // Catch: java.lang.Exception -> L31
            r0 = 4
            r6[r0] = r10     // Catch: java.lang.Exception -> L31
            java.util.List r10 = kotlin.collections.CollectionsKt.listOf(r6)     // Catch: java.lang.Exception -> L31
            r3.<init>(r10)     // Catch: java.lang.Exception -> L31
            return r3
        Lab:
            r9 = move-exception
            r1 = r10
            r10 = r9
            r9 = r3
        Laf:
            com.unity3d.ads.adplayer.model.OnWebRequestFailed r0 = new com.unity3d.ads.adplayer.model.OnWebRequestFailed
            java.lang.String r10 = r10.getMessage()
            if (r10 != 0) goto Lb9
            java.lang.String r10 = ""
        Lb9:
            java.lang.String[] r9 = new java.lang.String[]{r1, r9, r10}
            java.util.List r9 = kotlin.collections.CollectionsKt.listOf(r9)
            r0.<init>(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1.invoke2(java.lang.Object[], kotlin.coroutines.Continuation):java.lang.Object");
    }
}
