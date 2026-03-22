package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.iZ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1692iZ implements InterfaceC1276bi {
    public final /* synthetic */ C7L A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1276bi
    public final void AAe() {
        AnonymousClass78 anonymousClass78;
        C6M c6m;
        anonymousClass78 = this.A00.A03;
        String A00 = anonymousClass78.A23().A00();
        if (TextUtils.isEmpty(A00)) {
            return;
        }
        WN wn = new WN();
        c6m = this.A00.A04;
        WN.A0O(wn, c6m, WQ.A00(A00), this.A00.A7G());
    }

    public C1692iZ(C7L c7l) {
        this.A00 = c7l;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1276bi
    public final void AD8(C5G c5g) {
        new Handler(Looper.getMainLooper()).postDelayed(new C1694ib(this, c5g), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1276bi
    public final void ADO() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1276bi
    public final void AFS(View view, MotionEvent motionEvent) {
    }
}
