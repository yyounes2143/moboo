package com.tencent.liteav.base.util;

import android.os.MessageQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CustomHandler f10249a;
    private final MessageQueue.IdleHandler b;

    private e(CustomHandler customHandler, MessageQueue.IdleHandler idleHandler) {
        this.f10249a = customHandler;
        this.b = idleHandler;
    }

    public static Runnable a(CustomHandler customHandler, MessageQueue.IdleHandler idleHandler) {
        return new e(customHandler, idleHandler);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CustomHandler.lambda$quitLooper$3(this.f10249a, this.b);
    }
}
