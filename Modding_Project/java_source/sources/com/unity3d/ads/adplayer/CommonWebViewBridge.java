package com.unity3d.ads.adplayer;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.ads.adplayer.model.WebViewEvent;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.core.log.DeviceLog;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ!\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\"J \u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0012H\u0016J\u0010\u0010'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u0012H\u0016J;\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u00122\u0012\u0010,\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u0014\"\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010-J5\u0010.\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u00122\u0012\u0010,\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u0014\"\u00020\u0015H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010-J\u0019\u00100\u001a\u00020\u001e2\u0006\u00101\u001a\u000202H\u0096@ø\u0001\u0000¢\u0006\u0002\u00103R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u000e\u001a&\u0012\"\u0012 \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u0012\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u00130\u00110\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\r0\u0017X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00064"}, d2 = {"Lcom/unity3d/ads/adplayer/CommonWebViewBridge;", "Lcom/unity3d/ads/adplayer/WebViewBridge;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "webViewContainer", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "adPlayerScope", "Lkotlinx/coroutines/CoroutineScope;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V", "_onInvocation", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/unity3d/ads/adplayer/Invocation;", "callbacks", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lkotlin/Pair;", "", "Lkotlinx/coroutines/CompletableDeferred;", "", "", "onInvocation", "Lkotlinx/coroutines/flow/SharedFlow;", "getOnInvocation", "()Lkotlinx/coroutines/flow/SharedFlow;", "scope", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "execute", "", "handlerType", "Lcom/unity3d/ads/adplayer/HandlerType;", "arguments", "(Lcom/unity3d/ads/adplayer/HandlerType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleCallback", "callbackId", "callbackStatus", "rawParameters", "handleInvocation", "message", AdActivity.REQUEST_KEY_EXTRA, "className", FirebaseAnalytics.Param.METHOD, "params", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "respond", NotificationCompat.CATEGORY_STATUS, "sendEvent", "event", "Lcom/unity3d/ads/adplayer/model/WebViewEvent;", "(Lcom/unity3d/ads/adplayer/model/WebViewEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCommonWebViewBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonWebViewBridge.kt\ncom/unity3d/ads/adplayer/CommonWebViewBridge\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n13579#2,2:166\n13579#2,2:173\n230#3,5:168\n230#3,5:176\n1#4:175\n*S KotlinDebug\n*F\n+ 1 CommonWebViewBridge.kt\ncom/unity3d/ads/adplayer/CommonWebViewBridge\n*L\n45#1:166,2\n63#1:173,2\n57#1:168,5\n90#1:176,5\n*E\n"})
/* loaded from: classes6.dex */
public final class CommonWebViewBridge implements WebViewBridge {
    @NotNull
    private final MutableSharedFlow<Invocation> _onInvocation;
    @NotNull
    private final MutableStateFlow<Set<Pair<String, CompletableDeferred<Object[]>>>> callbacks;
    @NotNull
    private final SharedFlow<Invocation> onInvocation;
    @NotNull
    private final CoroutineScope scope;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final WebViewContainer webViewContainer;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$1", f = "CommonWebViewBridge.kt", i = {}, l = {33}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
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
                WebViewContainer webViewContainer = CommonWebViewBridge.this.webViewContainer;
                CommonWebViewBridge commonWebViewBridge = CommonWebViewBridge.this;
                this.label = 1;
                if (webViewContainer.addJavascriptInterface(commonWebViewBridge, "webviewbridge", this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    public CommonWebViewBridge(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull WebViewContainer webViewContainer, @NotNull CoroutineScope coroutineScope, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        this.webViewContainer = webViewContainer;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        CoroutineScope plus = CoroutineScopeKt.plus(CoroutineScopeKt.plus(coroutineScope, coroutineDispatcher), new CoroutineName("CommonWebViewBridge"));
        this.scope = plus;
        this.callbacks = StateFlowKt.MutableStateFlow(SetsKt.emptySet());
        MutableSharedFlow<Invocation> MutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 64, null, 5, null);
        this._onInvocation = MutableSharedFlow$default;
        this.onInvocation = FlowKt.asSharedFlow(MutableSharedFlow$default);
        BuildersKt__Builders_commonKt.launch$default(plus, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object execute(HandlerType handlerType, String str, Continuation<? super Unit> continuation) {
        WebViewContainer webViewContainer = this.webViewContainer;
        Object evaluateJavascript = webViewContainer.evaluateJavascript("window.nativebridge." + handlerType.getJsPath() + '(' + str + ");", continuation);
        if (evaluateJavascript == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return evaluateJavascript;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object respond(String str, String str2, Object[] objArr, Continuation<? super Unit> continuation) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONArray.put(str2);
        jSONArray.put(new JSONArray(objArr));
        HandlerType handlerType = HandlerType.CALLBACK;
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractJsonLexerKt.BEGIN_LIST);
        sb.append(jSONArray);
        sb.append(AbstractJsonLexerKt.END_LIST);
        Object execute = execute(handlerType, sb.toString(), continuation);
        if (execute == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return execute;
        }
        return Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    @NotNull
    public SharedFlow<Invocation> getOnInvocation() {
        return this.onInvocation;
    }

    @NotNull
    public final CoroutineScope getScope() {
        return this.scope;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a2, code lost:
        if (r19.equals("OK") == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a9, code lost:
        if (r19.equals(com.google.firebase.analytics.FirebaseAnalytics.Param.SUCCESS) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ac, code lost:
        r3.complete(r2);
     */
    @Override // com.unity3d.ads.adplayer.WebViewBridge
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleCallback(@org.jetbrains.annotations.NotNull java.lang.String r18, @org.jetbrains.annotations.NotNull java.lang.String r19, @org.jetbrains.annotations.NotNull java.lang.String r20) {
        /*
            r17 = this;
            r0 = r17
            r1 = r19
            org.json.JSONArray r2 = new org.json.JSONArray
            r3 = r20
            r2.<init>(r3)
            java.lang.Object[] r2 = com.unity3d.ads.core.extensions.JSONArrayExtensionsKt.toTypedArray(r2)
            kotlinx.coroutines.flow.MutableStateFlow<java.util.Set<kotlin.Pair<java.lang.String, kotlinx.coroutines.CompletableDeferred<java.lang.Object[]>>>> r3 = r0.callbacks
            java.lang.Object r3 = r3.getValue()
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            java.util.Iterator r3 = r3.iterator()
        L1b:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L37
            java.lang.Object r4 = r3.next()
            r5 = r4
            kotlin.Pair r5 = (kotlin.Pair) r5
            java.lang.Object r5 = r5.component1()
            java.lang.String r5 = (java.lang.String) r5
            r6 = r18
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L1b
            goto L38
        L37:
            r4 = 0
        L38:
            kotlin.Pair r4 = (kotlin.Pair) r4
            if (r4 != 0) goto L3e
            goto Lc2
        L3e:
            java.lang.Object r3 = r4.component2()
            kotlinx.coroutines.CompletableDeferred r3 = (kotlinx.coroutines.CompletableDeferred) r3
            java.lang.String r5 = "success"
            java.lang.String r6 = "error"
            java.lang.String[] r7 = new java.lang.String[]{r5, r6}
            java.util.Set r7 = kotlin.collections.SetsKt.setOf(r7)
            boolean r7 = r7.contains(r1)
            if (r7 == 0) goto L66
            com.unity3d.ads.core.domain.SendDiagnosticEvent r8 = r0.sendDiagnosticEvent
            r15 = 62
            r16 = 0
            java.lang.String r9 = "old_callback_status"
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r8, r9, r10, r11, r12, r13, r14, r15, r16)
        L66:
            int r7 = r1.hashCode()
            r8 = -1867169789(0xffffffff90b54003, float:-7.149054E-29)
            if (r7 == r8) goto La5
            r5 = 2524(0x9dc, float:3.537E-42)
            if (r7 == r5) goto L9c
            r5 = 66247144(0x3f2d9e8, float:1.42735105E-36)
            if (r7 == r5) goto L85
            r5 = 96784904(0x5c4d208, float:1.8508905E-35)
            if (r7 == r5) goto L7e
            goto Laf
        L7e:
            boolean r1 = r1.equals(r6)
            if (r1 != 0) goto L8e
            goto Laf
        L85:
            java.lang.String r5 = "ERROR"
            boolean r1 = r1.equals(r5)
            if (r1 != 0) goto L8e
            goto Laf
        L8e:
            java.lang.Exception r1 = new java.lang.Exception
            r5 = 0
            r2 = r2[r5]
            java.lang.String r2 = (java.lang.String) r2
            r1.<init>(r2)
            r3.completeExceptionally(r1)
            goto Laf
        L9c:
            java.lang.String r5 = "OK"
            boolean r1 = r1.equals(r5)
            if (r1 != 0) goto Lac
            goto Laf
        La5:
            boolean r1 = r1.equals(r5)
            if (r1 != 0) goto Lac
            goto Laf
        Lac:
            r3.complete(r2)
        Laf:
            kotlinx.coroutines.flow.MutableStateFlow<java.util.Set<kotlin.Pair<java.lang.String, kotlinx.coroutines.CompletableDeferred<java.lang.Object[]>>>> r1 = r0.callbacks
        Lb1:
            java.lang.Object r2 = r1.getValue()
            r3 = r2
            java.util.Set r3 = (java.util.Set) r3
            java.util.Set r3 = kotlin.collections.SetsKt.minus(r3, r4)
            boolean r2 = r1.compareAndSet(r2, r3)
            if (r2 == 0) goto Lb1
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.handleCallback(java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public void handleInvocation(@NotNull String str) {
        JSONArray jSONArray;
        String str2;
        String str3;
        JSONArray jSONArray2;
        try {
            try {
                JSONArray jSONArray3 = new JSONArray(str);
                int length = jSONArray3.length();
                for (int i = 0; i < length; i++) {
                    Object obj = jSONArray3.get(i);
                    String str4 = null;
                    if (obj instanceof JSONArray) {
                        jSONArray = (JSONArray) obj;
                    } else {
                        jSONArray = null;
                    }
                    if (jSONArray != null) {
                        if (jSONArray.length() == 4) {
                            Object obj2 = jSONArray.get(0);
                            if (obj2 instanceof String) {
                                str2 = (String) obj2;
                            } else {
                                str2 = null;
                            }
                            if (str2 != null) {
                                Object obj3 = jSONArray.get(1);
                                if (obj3 instanceof String) {
                                    str3 = (String) obj3;
                                } else {
                                    str3 = null;
                                }
                                if (str3 != null) {
                                    Object obj4 = jSONArray.get(2);
                                    if (obj4 instanceof JSONArray) {
                                        jSONArray2 = (JSONArray) obj4;
                                    } else {
                                        jSONArray2 = null;
                                    }
                                    if (jSONArray2 != null) {
                                        Object obj5 = jSONArray.get(3);
                                        if (obj5 instanceof String) {
                                            str4 = (String) obj5;
                                        }
                                        if (str4 != null) {
                                            String str5 = str2 + '.' + str3;
                                            DeviceLog.debug("Unity Ads WebView calling for: " + str5 + '(' + jSONArray2 + ')');
                                            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new CommonWebViewBridge$handleInvocation$7(str5, jSONArray2, this, str4, null), 3, null);
                                        } else {
                                            throw new IllegalArgumentException(("Invalid callback id passed to CommonWebViewBridge: " + str).toString());
                                        }
                                    } else {
                                        throw new IllegalArgumentException(("Invalid parameters passed to CommonWebViewBridge: " + str).toString());
                                    }
                                } else {
                                    throw new IllegalArgumentException(("Invalid method name passed to CommonWebViewBridge: " + str).toString());
                                }
                            } else {
                                throw new IllegalArgumentException(("Invalid class name passed to CommonWebViewBridge: " + str).toString());
                            }
                        } else {
                            throw new IllegalArgumentException(("Invocation must have 4 elements: " + jSONArray).toString());
                        }
                    } else {
                        throw new IllegalArgumentException(("Invalid invocation passed to CommonWebViewBridge: " + str).toString());
                    }
                }
            } catch (JSONException e) {
                throw new IllegalArgumentException("Invalid JSON array passed to CommonWebViewBridge: " + str, e);
            }
        } catch (Exception e2) {
            DeviceLog.error("Error handling invocation from webview (" + str + ')');
            SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
            String message = e2.getMessage();
            if (message == null) {
                message = e2.getClass().getSimpleName();
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_webview_invocation_error", null, MapsKt.mapOf(TuplesKt.to("reason_debug", message), TuplesKt.to("webview_invocation", str)), null, null, null, 58, null);
            throw new IllegalArgumentException("Invalid message passed to CommonWebViewBridge: " + str, e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009a A[RETURN] */
    @Override // com.unity3d.ads.adplayer.WebViewBridge
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object request(@org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull java.lang.Object[] r13, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Object[]> r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.unity3d.ads.adplayer.CommonWebViewBridge$request$1
            if (r0 == 0) goto L13
            r0 = r14
            com.unity3d.ads.adplayer.CommonWebViewBridge$request$1 r0 = (com.unity3d.ads.adplayer.CommonWebViewBridge$request$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.CommonWebViewBridge$request$1 r0 = new com.unity3d.ads.adplayer.CommonWebViewBridge$request$1
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3d
            if (r2 == r5) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r14)
            return r14
        L2d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L35:
            java.lang.Object r11 = r0.L$0
            kotlinx.coroutines.CompletableDeferred r11 = (kotlinx.coroutines.CompletableDeferred) r11
            kotlin.ResultKt.throwOnFailure(r14)
            goto L8f
        L3d:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlinx.coroutines.CompletableDeferred r14 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r4, r5, r4)
            int r2 = r14.hashCode()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            kotlinx.coroutines.flow.MutableStateFlow<java.util.Set<kotlin.Pair<java.lang.String, kotlinx.coroutines.CompletableDeferred<java.lang.Object[]>>>> r6 = r10.callbacks
        L4e:
            java.lang.Object r7 = r6.getValue()
            r8 = r7
            java.util.Set r8 = (java.util.Set) r8
            kotlin.Pair r9 = kotlin.TuplesKt.to(r2, r14)
            java.util.Set r8 = kotlin.collections.SetsKt.plus(r8, r9)
            boolean r7 = r6.compareAndSet(r7, r8)
            if (r7 == 0) goto L4e
            org.json.JSONArray r6 = new org.json.JSONArray
            r6.<init>()
            r6.put(r11)
            r6.put(r12)
            r6.put(r2)
            int r11 = r13.length
            r12 = 0
        L73:
            if (r12 >= r11) goto L7d
            r2 = r13[r12]
            r6.put(r2)
            int r12 = r12 + 1
            goto L73
        L7d:
            com.unity3d.ads.adplayer.HandlerType r11 = com.unity3d.ads.adplayer.HandlerType.INVOCATION
            java.lang.String r12 = r6.toString()
            r0.L$0 = r14
            r0.label = r5
            java.lang.Object r11 = r10.execute(r11, r12, r0)
            if (r11 != r1) goto L8e
            goto L99
        L8e:
            r11 = r14
        L8f:
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r11 = r11.await(r0)
            if (r11 != r1) goto L9a
        L99:
            return r1
        L9a:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.request(java.lang.String, java.lang.String, java.lang.Object[], kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    @Nullable
    public Object sendEvent(@NotNull WebViewEvent webViewEvent, @NotNull Continuation<? super Unit> continuation) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(webViewEvent.getCategory());
        jSONArray.put(webViewEvent.getName());
        for (Object obj : webViewEvent.getParameters()) {
            jSONArray.put(obj);
        }
        Object execute = execute(HandlerType.EVENT, jSONArray.toString(), continuation);
        if (execute == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return execute;
        }
        return Unit.INSTANCE;
    }
}
