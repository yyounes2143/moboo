package com.changdu.component.webviewcache;

import android.annotation.SuppressLint;
import android.webkit.JavascriptInterface;
import com.google.gson.Gson;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\bJ\u001b\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\bJ\u001b\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\bJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0014\u0010\u0003J\r\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0015¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Lcom/changdu/component/webviewcache/CDJsInterface;", "", "<init>", "()V", "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;", "jsInterfaceParamsData", "", "responseToWebView", "(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "methodName", "handleReceivedRequest", "(Ljava/lang/String;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "responseAppParams", "sensorsDataReport", "firebaseDataReport", "Lcom/changdu/component/webviewcache/CDWebView;", "webView", "bind", "(Lcom/changdu/component/webviewcache/CDWebView;)V", "unbind", "", "hasBind", "()Z", "paramsJsonStr", AdActivity.REQUEST_KEY_EXTRA, "(Ljava/lang/String;Ljava/lang/String;)V", "visible", "notifyVisible", "(Z)V", "notifyUpdatePageAd", "webview-cache_release"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCDJsInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDJsInterface.kt\ncom/changdu/component/webviewcache/CDJsInterface\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,669:1\n1#2:670\n*E\n"})
/* loaded from: classes3.dex */
public final class CDJsInterface {

    /* renamed from: a  reason: collision with root package name */
    public CDWebView f5379a;
    public CoroutineScope b;

    /* JADX INFO: Access modifiers changed from: private */
    public final Object firebaseDataReport(CDJsInterfaceParamsData cDJsInterfaceParamsData, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new C0255b(cDJsInterfaceParamsData, this, null), continuation);
        if (withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return withContext;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:198:0x02b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x02ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleReceivedRequest(java.lang.String r4, com.changdu.component.webviewcache.CDJsInterfaceParamsData r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            Method dump skipped, instructions count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.webviewcache.CDJsInterface.handleReceivedRequest(java.lang.String, com.changdu.component.webviewcache.CDJsInterfaceParamsData, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object responseAppParams(CDJsInterfaceParamsData cDJsInterfaceParamsData, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new A(cDJsInterfaceParamsData, this, null), continuation);
        if (withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return withContext;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r2, r4, r0) != r1) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object responseToWebView(com.changdu.component.webviewcache.CDJsInterfaceParamsData r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.changdu.component.webviewcache.B
            if (r0 == 0) goto L13
            r0 = r10
            com.changdu.component.webviewcache.B r0 = (com.changdu.component.webviewcache.B) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.changdu.component.webviewcache.B r0 = new com.changdu.component.webviewcache.B
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3b
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r10)
            goto L78
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L35:
            com.changdu.component.webviewcache.CDWebView r9 = r0.f5377a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L62
        L3b:
            kotlin.ResultKt.throwOnFailure(r10)
            boolean r10 = r8.hasBind()
            if (r10 != 0) goto L47
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L47:
            com.changdu.component.webviewcache.CDWebView r10 = r8.f5379a
            if (r10 == 0) goto L78
            kotlinx.coroutines.CoroutineDispatcher r2 = kotlinx.coroutines.Dispatchers.getIO()
            com.changdu.component.webviewcache.D r6 = new com.changdu.component.webviewcache.D
            r6.<init>(r9, r5)
            r0.f5377a = r10
            r0.d = r4
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r2, r6, r0)
            if (r9 != r1) goto L5f
            goto L77
        L5f:
            r7 = r10
            r10 = r9
            r9 = r7
        L62:
            java.lang.String r10 = (java.lang.String) r10
            kotlinx.coroutines.MainCoroutineDispatcher r2 = kotlinx.coroutines.Dispatchers.getMain()
            com.changdu.component.webviewcache.C r4 = new com.changdu.component.webviewcache.C
            r4.<init>(r9, r10, r5)
            r0.f5377a = r5
            r0.d = r3
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r2, r4, r0)
            if (r9 != r1) goto L78
        L77:
            return r1
        L78:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.webviewcache.CDJsInterface.responseToWebView(com.changdu.component.webviewcache.CDJsInterfaceParamsData, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sensorsDataReport(CDJsInterfaceParamsData cDJsInterfaceParamsData, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new E(cDJsInterfaceParamsData, this, null), continuation);
        if (withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return withContext;
        }
        return Unit.INSTANCE;
    }

    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    public final void bind(@NotNull CDWebView cDWebView) {
        unbind();
        this.f5379a = cDWebView;
        if (cDWebView != null) {
            cDWebView.addJavascriptInterface(this, "cdbridge");
        }
        this.b = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getMain().getImmediate()).plus(new CoroutineName("CDWebViewCoroutineMain")));
    }

    public final boolean hasBind() {
        if (this.f5379a != null) {
            return true;
        }
        return false;
    }

    public final void notifyUpdatePageAd() {
        CoroutineScope coroutineScope = this.b;
        if (coroutineScope != null) {
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new w(this, null), 3, null);
        }
    }

    public final void notifyVisible(boolean z) {
        CoroutineScope coroutineScope = this.b;
        if (coroutineScope != null) {
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new y(z, this, null), 3, null);
        }
    }

    @JavascriptInterface
    public final void request(@NotNull String str, @NotNull String str2) {
        CDJsInterfaceParamsData cDJsInterfaceParamsData;
        CDJsInterfaceParamsData cDJsInterfaceParamsData2;
        CoroutineScope coroutineScope;
        if (!StringsKt.isBlank(str)) {
            try {
                cDJsInterfaceParamsData2 = (CDJsInterfaceParamsData) new Gson().fromJson(str2, (Class<Object>) CDJsInterfaceParamsData.class);
            } catch (Exception e) {
                e.printStackTrace();
                cDJsInterfaceParamsData = new CDJsInterfaceParamsData(null, null, null, 7, null);
            }
            if (cDJsInterfaceParamsData2 == null) {
                cDJsInterfaceParamsData = new CDJsInterfaceParamsData(null, null, null, 7, null);
                cDJsInterfaceParamsData2 = cDJsInterfaceParamsData;
            }
            String requestId = cDJsInterfaceParamsData2.getRequestId();
            if (requestId != null && !StringsKt.isBlank(requestId) && (coroutineScope = this.b) != null) {
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new z(this, str, cDJsInterfaceParamsData2, null), 3, null);
            }
        }
    }

    public final void unbind() {
        CDWebView cDWebView = this.f5379a;
        if (cDWebView != null) {
            cDWebView.removeJavascriptInterface("cdbridge");
        }
        this.f5379a = null;
        CoroutineScope coroutineScope = this.b;
        if (coroutineScope != null) {
            CoroutineScopeKt.cancel$default(coroutineScope, null, 1, null);
        }
        this.b = null;
    }
}
