package com.facebook.ads.redexgen.X;

import java.io.File;
import java.util.concurrent.Callable;
/* loaded from: assets/audience_network.dex */
public class L4 implements Callable<Void> {
    public final File A00;
    public final /* synthetic */ AbstractC1738jN A01;

    public L4(AbstractC1738jN abstractC1738jN, File file) {
        this.A01 = abstractC1738jN;
        this.A00 = file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00 */
    public final Void call() throws Exception {
        this.A01.A06(this.A00);
        return null;
    }
}
