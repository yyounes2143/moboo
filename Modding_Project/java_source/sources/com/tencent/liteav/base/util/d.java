package com.tencent.liteav.base.util;

import android.os.MessageQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class d implements MessageQueue.IdleHandler {

    /* renamed from: a  reason: collision with root package name */
    private final CustomHandler f10248a;

    private d(CustomHandler customHandler) {
        this.f10248a = customHandler;
    }

    public static MessageQueue.IdleHandler a(CustomHandler customHandler) {
        return new d(customHandler);
    }

    @Override // android.os.MessageQueue.IdleHandler
    public final boolean queueIdle() {
        return CustomHandler.lambda$quitLooper$2(this.f10248a);
    }
}
